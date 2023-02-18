import 'package:flutter/material.dart';

import 'theme_manager/theme_data.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAplicationTheme(),
    );
  }
}
