// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class MatchButtonWidget extends StatelessWidget {
  const MatchButtonWidget({
    Key? key,
    required this.onPressed,
    this.dimension = Sizes.s50,
    required this.imagePath,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double dimension;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      splashColor: ColorManager.black30,
      padding: const EdgeInsets.all(Sizes.s6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.s50),
      ),
      animationDuration: const Duration(milliseconds: 1000),
      child: Container(
        height: dimension,
        width: dimension,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("${AssetImageIconManager.imagePath}/$imagePath"),
          ),
        ),
      ),
    );
  }
}
