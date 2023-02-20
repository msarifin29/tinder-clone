import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/logo_image_widget.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 55.0,
          width: 55.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: const Image(
            image:
                AssetImage("${AssetImageIconManager.imagePath}/user_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        const LogoImageWidget(),
        const Image(
          width: Sizes.s24,
          image: AssetImage(
              "${AssetImageIconManager.imagePath}/icon_notification.png"),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
