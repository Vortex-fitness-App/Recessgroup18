import 'package:flutter/material.dart';

class MealsSection extends StatelessWidget {
  Widget _dailyMeals(String title) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: Color(0xFF1FC700),
                width: 1.3,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFA5A5A5),
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'My Plan',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  width: 28.0,
                  height: 28.0,
                  child: Image.asset(
                    'assets/images/tray.png',
                    color: Color(0xFF1FC700),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      'assets/images/four-squares.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(child: Container()),
        Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Column(
              children: <Widget>[
                Text('',
                    style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16.0)),
              ],
            )),
      ],
    );
  }
}
