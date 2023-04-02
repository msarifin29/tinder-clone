import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.s30,
      ),
      child: Image.asset(
        "${AssetImageIconManager.imagePath}/hero_image.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
