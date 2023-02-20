import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/match_button.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  const ExplorePeopleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(onPressed: () {}, imagePath: "icon_close.png"),
        MatchButtonWidget(
            dimension: 80.0, onPressed: () {}, imagePath: "icon_love.png"),
        MatchButtonWidget(onPressed: () {}, imagePath: "icon_favorite.png"),
      ],
    );
  }
}
