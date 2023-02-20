import 'package:flutter/material.dart';

import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/font_style_manager.dart';
import '../../../theme_manager/sizes.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({super.key});

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
            "Sabrina Anho",
            style: getWhiteTextStyle(
                fontSize: Sizes.s28, fontWeight: FontManager.semiBold),
          ),
          Text(
            "22, Lawyer",
            style: getGrey60TextStyle(),
          ),
          const SizedBox(
            height: Sizes.s10,
          ),
          Text(
            "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
            style: getWhiteTextStyle(),
          ),
        ],
      ),
    );
  }
}
