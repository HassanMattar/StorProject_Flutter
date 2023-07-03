import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHight;
  static late double defultSize;
  static late Orientation orientation;

  static void init(context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

// حساب الارتفاع المناسب بالنسبة لشاشة الجهاز الي هيشتغل عليي

 
}
  double getProporitionateScreenHight(double height) {
    double screenHeight = SizeConfig.screenHight;
    // التصميم الي عندي معمول على انو 812 
    //فالبتالي بدي احسب قديش بالنسبة للشاشة الي عندي 
    return (height/812)*screenHeight;
    
  }
  // حساب العرض المناسب بالنسبة لشاشة الجهاز الي هيشتغل عليي
   double getProporitionateScreenWidth(double width) {
    double screenWidth = SizeConfig.screenWidth;
    // التصميم الي عندي معمول على انو 375 
    //فالبتالي بدي احسب قديش بالنسبة للشاشة الي عندي 
    return (width/375)*screenWidth;
    
  }