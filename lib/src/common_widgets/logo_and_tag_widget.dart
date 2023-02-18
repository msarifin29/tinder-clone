import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/font_style_manager.dart';

import 'logo_image_widget.dart';

class LogoAndTagWidget extends StatelessWidget {
  const LogoAndTagWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LogoImageWidget(),
        Text(
          "Find your perfect love.",
          style: getWhiteTextStyle(),
        ),
      ],
    );
  }
}
