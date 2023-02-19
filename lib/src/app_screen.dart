import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/auth/presentation/sign_up_age_and_job_screen.dart';
import 'package:tinder_clone/src/features/auth/presentation/sign_up_screen.dart';
import 'package:tinder_clone/src/features/auth/presentation/sign_up_upload_photo_screen.dart';

import 'theme_manager/theme_data.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAplicationTheme(),
      initialRoute: "/",
      routes: {
        "/": (context) => const SignUpScreen(),
        SignUpAgeAndJobScreen.routeName: (context) =>
            const SignUpAgeAndJobScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen()
      },
    );
  }
}
