// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/authentication/domain/user_account.dart';

import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/custom_form_widget.dart';
import '../../../theme_manager/sizes.dart';
import '../widgets/hero_image.dart';
import '../widgets/logo_and_tag_widget.dart';
import 'sign_up_upload_photo_screen.dart';

class SignUpAgeAndJobScreen extends StatefulWidget {
  static const String routeName = "/sign-up-age-and-job";

  const SignUpAgeAndJobScreen({
    Key? key,
    required this.fullName,
    required this.email,
    required this.password,
  }) : super(key: key);

  final String fullName;
  final String email;
  final String password;

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

  String? validationInput() {
    if (ocupationController.text.isEmpty || ageController.text.isEmpty) {
      return "occupation and age can\t be empty ";
    }

    return null;
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
                  final message = validationInput();
                  if (message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  }
                  final userAccount = UserAccount(
                    fullName: widget.fullName,
                    email: widget.email,
                    password: widget.password,
                    occupation: ocupationController.text,
                    age: int.parse(ageController.text),
                  );
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                    arguments: userAccount,
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
