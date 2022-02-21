import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vortexapp1/pages/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:flutter/services.dart';
//import '';

import 'text_styles.dart';

// ignore: camel_case_types
class detailsScreen extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your BMI',
      home: MyHomePage(
        title: "YourBMI",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var gender;
  var height = 170.0;
  var weight = 60;
  var age = 19;
  var _status;
  // Constants
  double widthScale1 = 0.3;
  double heightScale1 = 0.20;

  double heightScale2 = 0.24;

  double widthScale3 = 0.425;
  double heightScale3 = 0.24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 2),
              height: MediaQuery.of(context).size.height * 0.91,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Text(
                      "JUST A FEW DETAILS",
                      style: TextStyle(
                          letterSpacing: 4, color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        // child: Padding(),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Container(
                          // padding: EdgeInsets.all(22)
                          width:
                              MediaQuery.of(context).size.width * widthScale1,
                          height:
                              MediaQuery.of(context).size.height * heightScale1,
                          child: Column(
                            children: <Widget>[
                              // Image.asset(
                              // "images/man.png",
                              //  scale: 7,
                              // ),
                              Container(
                                height: 20,
                              ),
                              Text(
                                "MALE",
                                style: textStyle1,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          ),
                          color: Colors.white10,
                          // splashColor: Colors.yellow.shade700,
                        ),
                        onPressed: () {
                          gender = 1;
                        },
                      ),
                      ElevatedButton(
                        // child: Padding(padding: EdgeInsets.all(22)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Container(
                          width:
                              MediaQuery.of(context).size.width * widthScale1,
                          height:
                              MediaQuery.of(context).size.height * heightScale1,
                          child: Column(
                            children: <Widget>[
                              // Image.asset(
                              // "images/woman.png",
                              //scale: 7,
                              //),
                              Container(
                                height: 20,
                              ),
                              Text(
                                "FEMALE",
                                style: textStyle1,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ),

                        onPressed: () {
                          gender = 2;
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ), // Gender Buttons
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white10,
                    ),
                    height: MediaQuery.of(context).size.height * heightScale2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: textStyle1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              height.toStringAsFixed(1),
                              style: textStyle2,
                            ),
                            Text(
                              " cm",
                              style: textStyle3,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                            thumbColor: Colors.yellow.shade700,
                            activeTrackColor: Colors.yellow.shade900,
                          ),
                          child: Slider(
                            value: height,
                            onChanged: (newRating) {
                              setState(() {
                                height = newRating;
                              });
                            },
                            min: 53.0,
                            max: 280.0,
                          ),
                        ),
                      ],
                    ),
                  ), // Height
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white10,
                        ),
                        height:
                            MediaQuery.of(context).size.height * heightScale3,
                        width: MediaQuery.of(context).size.width * widthScale3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "WEIGHT",
                              style: textStyle1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  weight.toString(),
                                  style: textStyle2,
                                ),
                                Text(
                                  " Kg",
                                  style: textStyle3,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  width: 30.0,
                                  height: 30.0,
                                  child: FloatingActionButton(
                                    heroTag: 'btn1',
                                    backgroundColor: Colors.yellow.shade700,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                  height: 30.0,
                                  child: FloatingActionButton(
                                    heroTag: 'btn2',
                                    backgroundColor: Colors.yellow.shade700,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ), // WEIGHT
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white10,
                        ),
                        height:
                            MediaQuery.of(context).size.height * heightScale3,
                        width: MediaQuery.of(context).size.width * widthScale3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: textStyle1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  age.toString(),
                                  style: textStyle2,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  width: 30.0,
                                  height: 30.0,
                                  child: FloatingActionButton(
                                    heroTag: 'btn3',
                                    backgroundColor: Colors.yellow.shade700,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                  height: 30.0,
                                  child: FloatingActionButton(
                                    heroTag: 'btn4',
                                    backgroundColor: Colors.yellow.shade700,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ), // AGE
                    ],
                  ),
                ],
              ),
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Colors.yellow.shade700,
                )),
                child: Text(
                  " FIND YOUR WEIGHT STATUS ",
                  style: TextStyle(
                    letterSpacing: 3,
                  ),
                ),
                onPressed: () {
                  var status;
                  var bmiValue = weight / pow(height / 100, 2);
                  if ((18.5 < bmiValue) && (bmiValue < 25)) {
                    status = "NORMAL";
                  } else if (bmiValue < 18.5) {
                    status = "UNDERWEIGHT";
                  } else {
                    status = "OVERWEIGHT";
                  }
                  _status = status;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmi: bmiValue,
                        status: status,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi, required this.status});

  final double bmi;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Your Result"),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Colors.red,
                Colors.yellow,
                Colors.blue,
                Colors.purple
              ])

              //borderRadius: BorderRadius.circular(20)
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                status,
                style: TextStyle(fontSize: 30, letterSpacing: 3),
              ),
              Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                    color: Colors.orange.shade800,
                    fontSize: 60,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Normal BMI range:",
                      style: noteTextStyle1,
                    ),
                    Text(
                      "18.5 - 25 kg/m²",
                      style: noteTextStyle2,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    Colors.yellow.shade700,
                  )),
                  child: Row(
                    children: [
                      Text(
                        "         CONTINUE ",
                        style: TextStyle(
                          letterSpacing: 3,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('ON_BOARDING', false);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
