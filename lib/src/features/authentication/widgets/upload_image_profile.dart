import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class UploadImageProfile extends StatelessWidget {
  const UploadImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200.0,
          width: 200.0,
          padding: const EdgeInsets.all(Sizes.s10),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorManager.secondary,
                width: Sizes.s10,
                strokeAlign: BorderSide.strokeAlignInside,
              )),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: const Image(
              image: AssetImage(
                  "${AssetImageIconManager.imagePath}/profile_icon.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          bottom: -Sizes.s16,
          child: SizedBox(
            height: Sizes.s50,
            width: Sizes.s50,
            child: Image(
              image: AssetImage(
                  "${AssetImageIconManager.imagePath}/icon_add_color.png"),
            ),
          ),
        )
      ],
    );
  }
}
