import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_clone/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:tinder_clone/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/explore_people.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/profile_detail_screen.dart';

import 'theme_manager/theme_data.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    super.key,
  });

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isRegister = false;

  isUserRegister() async {
    isRegister = await UserAccountRegister.getUserAccountRegister();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    isUserRegister();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAplicationTheme(),
      home: isRegister ? const ExplorePeopleScreen() : const SignUpScreen(),
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName: (context) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (context) => const PeopleLovedScreen(),
        ProfileDetailScreen.routeName: (context) => const ProfileDetailScreen(),
      },
    );
  }
}
