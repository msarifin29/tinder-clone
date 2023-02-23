import 'package:flutter/material.dart';
import 'package:tinder_clone/src/features/authentication/data/data_user_account_local.dart';
import 'package:tinder_clone/src/features/authentication/domain/user_account.dart';
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

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    userAccount = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataUserAccount();
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
          children: const [
            CustomAppBar(),
            SizedBox(
              height: Sizes.s50,
            ),
            Expanded(
              child: MatchCard(),
            ),
            SizedBox(
              height: Sizes.s50,
            ),
            ExplorePeopleButtonWidget(),
          ],
        ),
      ),
    );
  }
}
