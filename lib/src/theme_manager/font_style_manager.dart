import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return GoogleFonts.poppins().copyWith(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getWhiteTextStyle({
  double fontSize = Sizes.s16,
  FontWeight fontWeight = FontManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    Colors.white,
  );
}

TextStyle getBlackTextStyle({
  double fontSize = Sizes.s16,
  FontWeight fontWeight = FontManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.black,
  );
}

TextStyle getBlack30TextStyle({
  double fontSize = Sizes.s16,
  FontWeight fontWeight = FontManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.black30,
  );
}

TextStyle getBlack60TextStyle({
  double fontSize = Sizes.s16,
  FontWeight fontWeight = FontManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.black60,
  );
}
