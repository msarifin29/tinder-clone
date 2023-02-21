// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class UploadImageProfile extends StatelessWidget {
  const UploadImageProfile({
    Key? key,
    required this.image,
  }) : super(key: key);

  final File? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorManager.secondary,
                width: Sizes.s10,
                strokeAlign: BorderSide.strokeAlignInside,
              )),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: image != null
                ? Image(
                    image: FileImage(image!),
                    fit: BoxFit.cover,
                  )
                : const Image(
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
