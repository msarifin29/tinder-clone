import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/image_box_widget.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';

class PeopleLoveCardWidget extends StatelessWidget {
  const PeopleLoveCardWidget({super.key});

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
            leading: const ImageBoxWidget(
              width: Sizes.s70,
              imagePath: "people_love3_image.png",
              shape: BoxShape.circle,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Sabrina Anho",
              style: getWhiteTextStyle(
                  fontSize: Sizes.s20, fontWeight: FontManager.semiBold),
            ),
            subtitle: Text(
              "22 , Lawyer",
              style: getGrey60TextStyle(),
            )),
      ),
    );
  }
}
