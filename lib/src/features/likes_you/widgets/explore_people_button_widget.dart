// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import 'package:tinder_clone/src/features/likes_you/widgets/match_button.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  const ExplorePeopleButtonWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AppinioSwiperController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
          onPressed: () {
            controller.swipeLeft();
          },
          imagePath: "icon_close.png",
        ),
        MatchButtonWidget(
            dimension: 80.0,
            onPressed: () {
              controller.swipe();
            },
            imagePath: "icon_love.png"),
        MatchButtonWidget(
          onPressed: () {
            controller.swipeRight();
          },
          imagePath: "icon_favorite.png",
        ),
      ],
    );
  }
}
