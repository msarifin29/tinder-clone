// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';
import '../../../theme_manager/sizes.dart';
import '../domain/user.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.s24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.fullName,
            style: getWhiteTextStyle(
                fontSize: Sizes.s28, fontWeight: FontManager.semiBold),
          ),
          Text(
            "${user.age}, ${user.occupation}",
            style: getGrey60TextStyle(),
          ),
          const SizedBox(
            height: Sizes.s10,
          ),
          Text(
            user.description,
            style: getWhiteTextStyle(),
          ),
        ],
      ),
    );
  }
}
