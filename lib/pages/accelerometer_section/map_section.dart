import 'package:flutter/material.dart';

class mapSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Find A Gym',
                style: TextStyle(fontSize: 18.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset('assets/images/weightlifting.png'),
                ),
              ),
            ],
          ),
        ),
        Text(
          '',
          style: TextStyle(fontSize: 18.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 65,
              color: Colors.lightGreen,
            ),
          ],
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'And WorkOut Now',
            style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}
