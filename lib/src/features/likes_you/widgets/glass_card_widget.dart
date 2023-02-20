import 'package:flutter/material.dart';

import '../../../theme_manager/asset_image_icon_manager.dart';
import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';
import '../../../theme_manager/sizes.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      margin: const EdgeInsets.all(Sizes.s26),
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.s24,
        vertical: Sizes.s14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33.0),
        image: const DecorationImage(
            image: AssetImage(
                "${AssetImageIconManager.imagePath}/glass_card_image.png"),
            fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sabrina Anho",
                style: getWhiteTextStyle(
                    fontSize: Sizes.s20, fontWeight: FontManager.semiBold),
              ),
              Text(
                "22 , Lawyer",
                style: getWhiteTextStyle(),
              )
            ],
          ),
          Container(
            width: Sizes.s50,
            height: Sizes.s50,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  "${AssetImageIconManager.imagePath}/icon_profile.png"),
              fit: BoxFit.cover,
            )),
          ),
        ],
      ),
    );
  }
}
