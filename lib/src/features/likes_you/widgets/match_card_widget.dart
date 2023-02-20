import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import 'glass_card_widget.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: Sizes.s10,
              color: ColorManager.secondary,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            image: const DecorationImage(
              image: AssetImage(
                  "${AssetImageIconManager.imagePath}/people_love2_image.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(Sizes.s70),
          ),
        ),
        const GlassCardWidget(),
      ],
    );
  }
}
