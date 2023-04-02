import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/custom_button.dart';
import 'package:tinder_clone/src/common_widgets/custom_text_button.dart';
import 'package:tinder_clone/src/features/authentication/presentation/sign_up_screen.dart';

import '../../../common_widgets/custom_form_widget.dart';
import '../../../theme_manager/sizes.dart';
import '../widgets/hero_image.dart';
import '../widgets/logo_and_tag_widget.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = "/sign-in";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
              CustomButton(text: "Sign In", onTap: () {}),
              CustomTextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                        (route) => false);
                  },
                  text: "Create New Account"),
            ],
          ),
        ),
      ),
    );
  }
}
