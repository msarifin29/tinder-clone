import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';

class PeopleLoveCardWidget extends StatelessWidget {
  const PeopleLoveCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: Container(
        margin: const EdgeInsets.only(bottom: Sizes.s10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.s20),
          color: ColorManager.secondary,
        ),
        child: ListTile(
            contentPadding: const EdgeInsets.all(Sizes.s10),
            leading: Container(
              width: Sizes.s70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                        "${AssetImageIconManager.imagePath}/people_love3_image.png"),
                    fit: BoxFit.cover),
              ),
            ),
            title: Text(
              "Sabrina Anho",
              style: getWhiteTextStyle(
                  fontSize: Sizes.s20, fontWeight: FontManager.semiBold),
            ),
            subtitle: Text(
              "22 , Lawyer",
              style: getGrey60TextStyle(),
            )),
      ),
    );
  }
}
