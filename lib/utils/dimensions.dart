import 'package:flutter/cupertino.dart';

class AppDimensions {
  final BuildContext context;

  AppDimensions(this.context);

  static double screenHeight = MediaQuery.of(context).size;
}
