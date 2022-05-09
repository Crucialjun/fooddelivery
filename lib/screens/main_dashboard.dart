import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/custom_big_text.dart';
import 'package:fooddelivery/widgets/custom_small_text.dart';
import 'package:fooddelivery/widgets/dashboard_pageview_item.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  double _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page ?? 0.0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark),
        flexibleSpace: Container(
          padding: EdgeInsets.only(
            top: AppDimensions.statusbarHeight,
            left: AppDimensions.width20,
            right: AppDimensions.width20,
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: AppDimensions.height60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomBigText(
                          text: "Kenya", color: AppColors.mainColor),
                      Row(
                        children: [
                          const CustomSmallText(text: "Nairobi"),
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            size: AppDimensions.iconsSize24,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: AppDimensions.height45,
                    height: AppDimensions.height45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radius15),
                        color: AppColors.mainColor),
                    child: Icon(
                      Icons.search,
                      size: AppDimensions.iconsSize24,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: AppDimensions.pageviewMainContainer,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return DashboardPageviewItem(
                      index: index,
                      pageValue: _currentPageValue,
                    );
                  })),
            ),
            DotsIndicator(
              dotsCount: 5,
              position: _currentPageValue,
              decorator: DotsDecorator(
                activeColor: AppColors.mainColor,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
