// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/match_button.dart';

import '../../../common_widgets/image_box_widget.dart';
import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';
import '../../../theme_manager/sizes.dart';

class ImageProfileDetailWidget extends StatelessWidget {
  const ImageProfileDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        const ImageBoxWidget(
          width: double.infinity,
          height: 420.0,
          imagePath: "people_love1_image.png",
          fit: BoxFit.cover,
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
              const ImageBoxWidget(
                height: Sizes.s24,
                width: Sizes.s24,
                imagePath: "icon_close_circle.png",
              ),
            ],
          ),
        )
      ],
    );
  }
}
