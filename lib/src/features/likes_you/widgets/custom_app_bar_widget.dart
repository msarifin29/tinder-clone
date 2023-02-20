import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/image_box_widget.dart';
import 'package:tinder_clone/src/common_widgets/logo_image_widget.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ImageBoxWidget(
          width: Sizes.s55,
          height: Sizes.s55,
          imagePath: "user_image.png",
          shape: BoxShape.circle,
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
