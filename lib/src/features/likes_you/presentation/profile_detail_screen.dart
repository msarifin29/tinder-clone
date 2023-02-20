import 'package:flutter/material.dart';
import 'package:tinder_clone/src/common_widgets/custom_button.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/list_image_profile_detail_widget.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/people_identity_widget.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import '../widgets/image_profile_detail_widget.dart';

class ProfileDetailScreen extends StatelessWidget {
  static const routeName = "/profile-detail";

  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageProfileDetailWidget(),
          const SizedBox(
            height: Sizes.s30,
          ),
          const PeopleIdentityWidget(),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.s24,
              vertical: Sizes.s30,
            ),
            child: ListImageProfielDetailWidget(),
          ),
          const SizedBox(
            height: Sizes.s40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
            child: CustomButton(
              text: "Chat Now",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
