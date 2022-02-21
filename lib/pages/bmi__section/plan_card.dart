import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final int planIndex;
  var imagepath;
  var textcomment;
  var details;
  VoidCallback tap;

  PlanCard(
      {required this.planIndex,
      required this.imagepath,
      required this.textcomment,
      required this.details,
      required this.tap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: tap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: (MediaQuery.of(context).size.height * 0.5) - 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          '$imagepath',
                          fit: BoxFit.fill,
                          color: const Color(0xff0d69ff).withOpacity(1.0),
                          colorBlendMode: BlendMode.softLight,
                        ),
                        Center(child: Text('$details')),
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.7,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF26CA01),
                      Color(0xFF99DE0B),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Text(' $textcomment',
                    style: TextStyle(color: Colors.white, fontSize: 17.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
