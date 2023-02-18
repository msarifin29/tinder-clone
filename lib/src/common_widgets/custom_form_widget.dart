// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tinder_clone/src/theme_manager/color_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_style_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({
    Key? key,
    required this.label,
    required this.hintText,
    this.isObscure = false,
    required this.controller,
  }) : super(key: key);

  final String label;
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(
          height: Sizes.s8,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: getBlack30TextStyle(),
            contentPadding: const EdgeInsets.symmetric(
              vertical: Sizes.s15,
              horizontal: Sizes.s30,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                Sizes.s50,
              ),
            ),
            filled: true,
            fillColor: ColorManager.secondary,
          ),
          obscureText: isObscure,
        ),
        const SizedBox(
          height: Sizes.s14,
        ),
      ],
    );
  }
}
