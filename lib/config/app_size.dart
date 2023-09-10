import 'package:flutter/cupertino.dart';

class AppSize {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static late double sizeDefault;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
    sizeDefault = orientation == Orientation.landscape ? screenHeight * 0.024 : screenWidth * 0.024;

    debugPrint(screenHeight.ceil().toString());
    debugPrint(screenWidth.ceil().toString());
    debugPrint(sizeDefault.ceil().toString());
  }
}
