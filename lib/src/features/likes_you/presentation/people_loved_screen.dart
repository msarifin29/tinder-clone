import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/profile_detail_screen.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/people_love_card_widget.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_style_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class PeopleLovedScreen extends StatelessWidget {
  static const String routeName = "/people-loved";

  const PeopleLovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "People You\nLoved",
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
            fontSize: Sizes.s20,
            fontWeight: FontManager.semiBold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: Sizes.s30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: Sizes.s50,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ProfileDetailScreen.routeName);
                      },
                      child: const PeopleLoveCardWidget());
                }),
          ),
        ],
      ),
    );
  }
}
