import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/custom_form_widget.dart';
import 'package:tinder_clone/src/common_widgets/custom_text_button.dart';
import 'package:tinder_clone/src/common_widgets/hero_image.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/logo_and_tag_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
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
                label: "Complete Name",
                hintText: "Write your name",
                controller: nameController,
              ),
              CustomFormWidget(
                label: "Email Address",
                hintText: "Write your email address",
                controller: emailController,
              ),
              CustomFormWidget(
                label: "Password",
                hintText: "Write your security",
                controller: passwordController,
                isObscure: true,
              ),
              const SizedBox(
                height: Sizes.s20,
              ),
              CustomButton(
                text: "Get Started",
                onTap: () {},
              ),
              CustomTextButton(onPressed: () {}, text: "Sign in to My Account"),
            ],
          ),
        ),
      ),
    );
  }
}
