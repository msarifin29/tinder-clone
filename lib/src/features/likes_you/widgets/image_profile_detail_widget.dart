// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tinder_clone/src/features/likes_you/domain/user.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/explore_people.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/match_button.dart';

import '../../../common_widgets/image_box_widget.dart';
import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';
import '../../../theme_manager/sizes.dart';

class ImageProfileDetailWidget extends StatelessWidget {
  const ImageProfileDetailWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: 420.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(user.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: Sizes.s40, right: Sizes.s26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                onPressed: () => Navigator.of(context).pop(),
                imagePath: "icon_arrow_left.png",
                dimension: Sizes.s22,
              ),
              Text(
                "Lover Profile\nDetail",
                textAlign: TextAlign.center,
                style: getWhiteTextStyle(
                  fontSize: Sizes.s20,
                  fontWeight: FontManager.semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    ExplorePeopleScreen.routeName,
                    (route) => false,
                  );
                },
                child: const ImageBoxWidget(
                  height: Sizes.s24,
                  width: Sizes.s24,
                  imagePath: "icon_close_circle.png",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
