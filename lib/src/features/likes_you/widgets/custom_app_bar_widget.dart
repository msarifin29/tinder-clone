// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:tinder_clone/src/common_widgets/image_box_widget.dart';
import 'package:tinder_clone/src/common_widgets/logo_image_widget.dart';
import 'package:tinder_clone/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_clone/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:tinder_clone/src/theme_manager/asset_image_icon_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.image,
  }) : super(key: key);

  final String? image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            UserAccountRegister.userLogoutRequest();
            Navigator.pushNamedAndRemoveUntil(
                context, SignUpScreen.routeName, (route) => false);
          },
          child: Container(
            height: Sizes.s55,
            width: Sizes.s55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: image != null
                    ? FileImage(File(image!))
                    : const AssetImage(
                            "${AssetImageIconManager.imagePath}/user_image.png")
                        as ImageProvider,
              ),
            ),
          ),
        ),
        const LogoImageWidget(),
        GestureDetector(
          onTap: () =>
              Navigator.of(context).pushNamed(PeopleLovedScreen.routeName),
          child: const ImageBoxWidget(
            width: Sizes.s24,
            height: Sizes.s24,
            imagePath: "icon_notification.png",
          ),
        ),
      ],
    );
  }
}
