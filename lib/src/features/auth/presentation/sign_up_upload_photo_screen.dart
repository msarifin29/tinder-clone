import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/custom_button.dart';
import 'package:tinder_clone/src/common_widgets/custom_text_button.dart';
import 'package:tinder_clone/src/common_widgets/image_profile.dart';
import 'package:tinder_clone/src/common_widgets/logo_and_tag_widget.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_style_manager.dart';

import '../../../theme_manager/sizes.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = "/sign-up-upload-photo";
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.s50,
          horizontal: Sizes.s24,
        ),
        child: Column(
          children: [
            const LogoAndTagWidget(),
            const SizedBox(height: Sizes.s55),
            const ImageProfile(),
            const SizedBox(height: 28.0),
            Text(
              "Andi Mania",
              style: getWhiteTextStyle(
                fontSize: Sizes.s22,
                fontWeight: FontManager.semiBold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "22, ",
                  style: getBlackTextStyle(),
                ),
                Text(
                  "Lawyer",
                  style: getBlackTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 240.0,
            ),
            const CustomButton(text: "Update My Profile"),
            CustomTextButton(onPressed: () {}, text: "Skip for Now")
          ],
        ),
      ),
    );
  }
}
