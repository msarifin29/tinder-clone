// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tinder_clone/src/features/likes_you/domain/user.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import 'glass_card_widget.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

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
            image: DecorationImage(
              image: AssetImage(
                user.imagePath,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(Sizes.s70),
          ),
        ),
        GlassCardWidget(
          user: user,
        ),
      ],
    );
  }
}
