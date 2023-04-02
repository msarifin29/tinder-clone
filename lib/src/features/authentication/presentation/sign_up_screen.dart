import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/custom_form_widget.dart';
import 'package:tinder_clone/src/common_widgets/custom_text_button.dart';
import 'package:tinder_clone/src/features/authentication/widgets/hero_image.dart';
import 'package:tinder_clone/src/features/authentication/presentation/sign_up_age_and_job_screen.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import '../../../common_widgets/custom_button.dart';
import '../widgets/logo_and_tag_widget.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = "/sign-up";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    fullNameController.clear();
    emailController.clear();
    passwordController.clear();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validationInput() {
    if (fullNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return "FullName, email and password can\t be empty ";
    }
    if (!emailController.text.contains("@")) {
      return "Email No Valid ";
    }
    if (passwordController.text.length < 5) {
      return "Password to short";
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
                label: "Complete Name",
                hintText: "Write your name",
                controller: fullNameController,
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
                onTap: () {
                  final message = validationInput();
                  if (message != null) {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpAgeAndJobScreen(
                        fullName: fullNameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    ),
                  );
                },
              ),
              CustomTextButton(onPressed: () {}, text: "Sign in to My Account"),
            ],
          ),
        ),
      ),
    );
  }
}
