import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/custom_button.dart';
import 'package:tinder_clone/src/common_widgets/custom_text_button.dart';
import 'package:tinder_clone/src/features/authentication/widgets/upload_image_profile.dart';
import 'package:tinder_clone/src/features/authentication/widgets/logo_and_tag_widget.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/explore_people.dart';
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
            const UploadImageProfile(),
            const SizedBox(height: Sizes.s50),
            Text(
              "Andi Mania",
              style: getWhiteTextStyle(
                fontSize: Sizes.s22,
                fontWeight: FontManager.semiBold,
              ),
            ),
            Text(
              "22, Lawyer",
              style: getBlackTextStyle(),
            ),
            const SizedBox(
              height: 240.0,
            ),
            CustomButton(
              text: "Update My Profile",
              onTap: () {
                Navigator.of(context).pushNamed(ExplorePeopleScreen.routeName);
              },
            ),
            CustomTextButton(onPressed: () {}, text: "Skip for Now"),
          ],
        ),
      ),
    );
  }
}
