import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/image_box_widget.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class ListImageProfielDetailWidget extends StatelessWidget {
  const ListImageProfielDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: Sizes.s14),
          child: ImageBoxWidget(
            width: 120.0,
            imagePath: "hobby2_image.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
