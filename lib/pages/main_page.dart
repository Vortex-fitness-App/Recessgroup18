import 'package:vortexapp1/findscreen.dart';
import 'package:vortexapp1/mappage.dart';
import 'package:vortexapp1/pages/accelerometer_section/dahboard.dart';
import 'package:vortexapp1/pages/accelerometer_section/map_section.dart';
import 'package:vortexapp1/pages/bmi__section/plan.dart';
import 'package:vortexapp1/pages/bmi__section/plan_section.dart';
import 'package:vortexapp1/pages/header_info.dart';

import 'package:vortexapp1/pages/workout_section/page/final_page.dart';
import 'package:flutter/material.dart';

import 'package:vortexapp1/pages/sections.dart';

import 'package:vortexapp1/pages/workout_section/workout_section.dart';

import 'accelerometer_section/run_section.dart';

class MainPage extends StatefulWidget {
  static String tag = 'main-page';
  @override
  MainPageState createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var _widthFull = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    HeaderInfo(
                      isMain: true,
                      sectionTitle: '',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Sections(
                            widthFull: _widthFull,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapsPage()));
                              },
                              child: mapSection(),
                            )),
                        Sections(
                            widthFull: _widthFull,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => dashboard()));
                              },
                              child: RunSection(),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Sections(
                          widthFull: _widthFull,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MealsPage()));
                            },
                            child: MealsSection(),
                          ),
                        ),
                        Sections(
                            widthFull: _widthFull,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ExercisePage()));
                              },
                              child: WorkoutSection(),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
