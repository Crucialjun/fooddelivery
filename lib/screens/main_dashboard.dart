import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/app_colors.dart';
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
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark),
        flexibleSpace: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomBigText(
                          text: "Kenya", color: AppColors.mainColor),
                      Row(
                        children: const [
                          CustomSmallText(text: "Nairobi"),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
        ),
      ),
      body: SizedBox(
        height: 320,
        child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return DashboardPageviewItem(index: index);
            })),
      ),
    );
  }
}
