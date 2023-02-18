import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';

ThemeData getAplicationTheme() => ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.primary,
        elevation: 0.0,
      ),
      scaffoldBackgroundColor: ColorManager.primary,
      fontFamily: FontFamilyConstant.fontFamily,
    );
