// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';

import '../theme_manager/font_style_manager.dart';
import '../theme_manager/sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Sizes.s55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Sizes.s50,
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFEA887B),
              Color(0xFFCE92E3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: getWhiteTextStyle(
            fontWeight: FontManager.semiBold,
          ),
        ),
      ),
    );
  }
}
