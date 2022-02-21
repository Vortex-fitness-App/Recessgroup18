import 'package:flutter/material.dart';
import 'package:vortexapp1/pages/accelerometer_section/widget/imageContainer.dart';
import 'package:vortexapp1/pages/accelerometer_section/widget/textWidget.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class dashboardCard extends StatelessWidget {
  int steps;

  double miles, calories, duration;
  dashboardCard(this.steps, this.miles, this.calories, this.duration,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: <Widget>[
                                //     // Text(
                                //     //   targetmiles.toStringAsFixed(1),

                                //     // ),

                                //   ],
                                // ),

                                text(50, steps.toString()),
                                SizedBox(
                                  width: 10,
                                ),
                                // this is for edit icon
                                const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                percent: (miles),
                progressColor: Colors.green,
                lineHeight: 20,
                animation: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // this is botton part
            Row(
              children: [
                const SizedBox(
                  width: 05,
                ),
                imageContainer(
                    "assets/locations.png", miles.toStringAsFixed(3), "Miles"),
                imageContainer("assets/calories.png",
                    calories.toStringAsFixed(3), "Calories"),
                imageContainer("assets/stopwatch.png",
                    duration.toStringAsFixed(3), "Duration"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
