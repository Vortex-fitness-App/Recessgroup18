import 'package:vortexapp1/pages/bmi__section/plan.dart';

import 'package:flutter/material.dart';

import 'package:vortexapp1/pages/main_page.dart';

import 'package:flutter/material.dart';

import 'package:vortexapp1/pages/onboarding_screen/iintroduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final pages = <String, WidgetBuilder>{
    MainPage.tag: (context) => MainPage(),
    MealsPage.tag: (context) => MealsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VORTEX FITNESS  APP',
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: show ? IntroScreen() : MainPage(),
    );
  }
}
