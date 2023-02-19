import 'package:flutter/material.dart';

import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/custom_form_widget.dart';
import '../../../common_widgets/hero_image.dart';
import '../../../common_widgets/logo_and_tag_widget.dart';
import '../../../theme_manager/sizes.dart';
import 'sign_up_upload_photo_screen.dart';

class SignUpAgeAndJobScreen extends StatefulWidget {
  static const String routeName = "/sign-up-age-and-job";
  const SignUpAgeAndJobScreen({super.key});

  @override
  State<SignUpAgeAndJobScreen> createState() => _SignUpAgeAndJobScreenState();
}

class _SignUpAgeAndJobScreenState extends State<SignUpAgeAndJobScreen> {
  final ocupationController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    ocupationController.clear();
    ageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.s50,
            horizontal: Sizes.s24,
          ),
          child: Column(
            children: [
              const LogoAndTagWidget(),
              const HeroImage(),
              CustomFormWidget(
                label: "Occupation",
                hintText: "Write your occupation",
                controller: ocupationController,
              ),
              CustomFormWidget(
                label: "Age",
                hintText: "Write your age",
                controller: ageController,
              ),
              const SizedBox(
                height: 130.0,
              ),
              CustomButton(
                text: "Continue Sign Up",
                onTap: () {
                  Navigator.of(context).pushNamed(
                    SignUpUploadPhotoScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
