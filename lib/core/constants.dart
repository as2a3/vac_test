import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const baseUrl = 'https://f45e6e71-94ac-4e09-bea7-64ac7f13cc11.mock.pstmn.io/';

const primarySwatch = Colors.blue;
const scaffoldBackgroundColor = Color(0xFFFFBE19);//FFBE19
const primaryColor = Color(0xFFF8F8F8);
final appHintColor = Colors.grey.shade300;
const primaryColorBlack = Color(0xFF303030);
const appColorScheme = ColorScheme.light(
  secondary: Color(0xFF1F6E1A),
);
final appTextTheme = TextTheme(
  /// headline6
  titleLarge: TextStyle(
    fontSize: 14.0.sp,
    color: appColorScheme.secondary,
    fontWeight: FontWeight.bold,
    fontFamily: 'BukraBold',
  ),

  /// headline5
  headlineSmall: TextStyle(
    fontSize: 16.0.sp,
    fontFamily: 'BukraBold',
    fontWeight: FontWeight.bold,
  ),

  /// headline4
  headlineMedium: TextStyle(
    fontSize: 18.0.sp,
    fontWeight: FontWeight.w400,
    // color: parseColor(setting.value.secondColor),
    height: 1.3,
  ),

  /// headline3
  displaySmall: TextStyle(
    fontSize: 20.0.sp,
    fontWeight: FontWeight.w700,
    // color: parseColor(setting.value.secondColor),
    height: 1.3,
  ),

  /// headline2
  displayMedium: TextStyle(
    fontSize: 22.0.sp,
    fontWeight: FontWeight.w700,
    // color: parseColor(setting.value.mainColor),
    height: 1.4.sp,
  ),

  /// headline1
  displayLarge: TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w300,
    // color: parseColor(setting.value.secondColor),
    height: 1.4.sp,
    fontFamily: 'BukraBold',
  ),

  /// subtitle1
  titleMedium: TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w300,
    height: 1.3,
  ),

  /// subtitle2
  titleSmall: TextStyle(
    fontSize: 12.0.sp,
    fontWeight: FontWeight.w300,
    color: const Color(0xFF707070),
    height: 1.3.sp,
  ),

  /// caption
  labelLarge: TextStyle(
    fontSize: 12.0.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF707070),
    // color: const Color(0xFF8C9DA8),
    height: 1.2.sp,
  ),
);

final bottomNavBarRounded = 36.w;
