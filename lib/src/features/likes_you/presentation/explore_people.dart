import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_clone/src/features/authentication/domain/user_account.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/bloc/explore_people/explore_people_bloc.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/custom_app_bar_widget.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/explore_people_button_widget.dart';
import 'package:tinder_clone/src/features/likes_you/widgets/match_card_widget.dart';
import 'package:tinder_clone/src/theme_manager/sizes.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = "/explore-people";

  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? userAccount;
  final cardController = AppinioSwiperController();

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    userAccount = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    context.read<ExplorePeopleBloc>().add(OnExplorePeopleEvent());
    getDataUserAccount();
  }

  @override
  void dispose() {
    cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.s50,
          horizontal: Sizes.s24,
        ),
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: Sizes.s50,
            ),
            BlocBuilder<ExplorePeopleBloc, ExplorePeopleState>(
              builder: (context, state) {
                if (state is ExplorePeopleLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is ExplorePeopleSucces) {
                  final users = state.result;
                  List<Widget> cards = [];
                  for (final user in users) {
                    cards.add(MatchCard(user: user));
                  }
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: AppinioSwiper(
                            direction: AppinioSwiperDirection.top,
                            controller: cardController,
                            cards: cards,
                            padding: const EdgeInsets.all(0),
                            onSwipe: (
                              int index,
                              AppinioSwiperDirection direction,
                            ) {
                              if (direction == AppinioSwiperDirection.top) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "you match ${users[index].fullName}"),
                                  ),
                                );
                              }
                              if (direction != AppinioSwiperDirection.left &&
                                  direction != AppinioSwiperDirection.right &&
                                  direction != AppinioSwiperDirection.bottom) {
                                context.read<PeopleLovedBloc>().add(
                                      AddPeopleLoved(user: users[index]),
                                    );
                              }
                            },
                            onEnd: () {
                              context
                                  .read<ExplorePeopleBloc>()
                                  .add(OnExplorePeopleEvent());
                            },
                          ),
                        ),
                        const SizedBox(
                          height: Sizes.s50,
                        ),
                        ExplorePeopleButtonWidget(
                          controller: cardController,
                        ),
                      ],
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
