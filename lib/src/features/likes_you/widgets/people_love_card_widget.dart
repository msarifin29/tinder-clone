// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tinder_clone/src/features/likes_you/domain/user.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';

class PeopleLoveCardWidget extends StatelessWidget {
  const PeopleLoveCardWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

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
              height: Sizes.s70,
              width: Sizes.s70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(user.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              user.fullName,
              style: getWhiteTextStyle(
                  fontSize: Sizes.s20, fontWeight: FontManager.semiBold),
            ),
            subtitle: Text(
              "${user.age}, ${user.occupation}",
              style: getGrey60TextStyle(),
            )),
      ),
    );
  }
}
