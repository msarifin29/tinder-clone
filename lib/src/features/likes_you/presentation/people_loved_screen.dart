import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/profile_detail_screen.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/people_love_card_widget.dart';
import 'package:tinder_clone/src/theme_manager/font_manager.dart';
import 'package:tinder_clone/src/theme_manager/font_style_manager.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

import 'bloc/people_loved/people_loved_bloc.dart';

class PeopleLovedScreen extends StatefulWidget {
  static const String routeName = "/people-loved";

  const PeopleLovedScreen({super.key});

  @override
  State<PeopleLovedScreen> createState() => _PeopleLovedScreenState();
}

class _PeopleLovedScreenState extends State<PeopleLovedScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeopleLovedBloc>().add(OnPeopleLovedEventCalled());
  }

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
          BlocBuilder<PeopleLovedBloc, PeopleLovedState>(
            builder: (context, state) {
              if (state is PeopleLovedLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is PeopleLovedLoaded) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: state.userMatch.length,
                      itemBuilder: (context, index) {
                        final user = state.userMatch[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ProfileDetailScreen.routeName,
                                arguments: user);
                          },
                          child: PeopleLoveCardWidget(
                            user: user,
                          ),
                        );
                      }),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
