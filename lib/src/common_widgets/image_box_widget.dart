import 'package:flutter/material.dart';

import '../theme_manager/asset_image_icon_manager.dart';

class ImageBoxWidget extends StatelessWidget {
  const ImageBoxWidget({
    Key? key,
    this.height,
    required this.width,
    required this.imagePath,
    this.shape = BoxShape.rectangle,
    this.fit,
  }) : super(key: key);

  final double? height;
  final double width;
  final String imagePath;
  final BoxShape shape;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: shape,
        image: DecorationImage(
          image: AssetImage("${AssetImageIconManager.imagePath}/$imagePath"),
          fit: fit,
        ),
      ),
    );
  }
}
