import 'package:flutter/material.dart';

import '../theme_manager/asset_image_icon_manager.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.0,
      width: 143.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "${AssetImageIconManager.imagePath}/logo_image.png",
          ),
        ),
      ),
    );
  }
}
