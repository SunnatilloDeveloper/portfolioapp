import 'package:flutter/material.dart';


import '../main_screen.dart';
import 'components/home_banner.dart';
import 'my_projects.dart';
import 'recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      MyProjects(),
      Recommendations(),
    ]);
  }
}

