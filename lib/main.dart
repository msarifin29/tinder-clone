import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/src/features/authentication/presentation/authentication/authentication_bloc.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/bloc/explore_people/explore_people_bloc.dart';
import 'package:tinder_clone/src/features/likes_you/presentation/bloc/people_loved/people_loved_bloc.dart';

import 'src/app_screen.dart';
import 'src/utils/my_bloc_observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthenticationBloc()),
        BlocProvider(create: (context) => ExplorePeopleBloc()),
        BlocProvider(create: (context) => PeopleLovedBloc()),
      ],
      child: const AppScreen(),
    );
  }
}
