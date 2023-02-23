import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/src/common_widgets/custom_button.dart';
import 'package:tinder_clone/src/common_widgets/custom_text_button.dart';
import 'package:tinder_clone/src/features/authentication/domain/user_account.dart';
import 'package:tinder_clone/src/features/authentication/widgets/upload_image_profile.dart';
import 'package:tinder_clone/src/features/authentication/widgets/logo_and_tag_widget.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/explore_people.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_style_manager.dart';
import 'package:tinder_clone/src/utils/image_picker_util.dart';

import '../../../theme_manager/sizes.dart';
import 'authentication/authentication_bloc.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = "/sign-up-upload-photo";

  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  File? image;

  void getImageProfile(ImageFrom source) async {
    final result = await ImagePickerUtil.getImageFrom(source);
    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var userAccount = ModalRoute.of(context)?.settings.arguments as UserAccount;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.s50,
          horizontal: Sizes.s24,
        ),
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is AuthenticationSucces) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                ExplorePeopleScreen.routeName,
                (route) => false,
              );
            }
          },
          child: Column(
            children: [
              const LogoAndTagWidget(),
              const SizedBox(height: Sizes.s55),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.all(Sizes.s24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  getImageProfile(ImageFrom.camera);
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: Sizes.s50,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  getImageProfile(ImageFrom.galery);
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.photo,
                                  size: Sizes.s50,
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: UploadImageProfile(
                  image: image,
                ),
              ),
              const SizedBox(height: Sizes.s50),
              Text(
                userAccount.fullName,
                style: getWhiteTextStyle(
                  fontSize: Sizes.s22,
                  fontWeight: FontManager.semiBold,
                ),
              ),
              Text(
                "${userAccount.age}, ${userAccount.occupation}",
                style: getBlackTextStyle(),
              ),
              const SizedBox(height: 240.0),
              BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state is AuthenticationLoading) {
                    return const CircularProgressIndicator();
                  }
                  return CustomButton(
                    text: "Update My Profile",
                    onTap: () {
                      userAccount.imageProfile = image?.path;
                      context.read<AuthenticationBloc>().add(
                            AuthenticationUserRegister(
                              userAccount: userAccount,
                              isRegister: true,
                            ),
                          );
                    },
                  );
                },
              ),
              CustomTextButton(
                  onPressed: () {
                    context.read<AuthenticationBloc>().add(
                          AuthenticationUserRegister(
                            userAccount: userAccount,
                            isRegister: true,
                          ),
                        );
                  },
                  text: "Skip for Now"),
            ],
          ),
        ),
      ),
    );
  }
}
