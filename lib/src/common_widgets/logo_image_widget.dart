import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/image_box_widget.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ImageBoxWidget(
      height: 34.0,
      width: 143.0,
      imagePath: "logo_image.png",
    );
  }
}
