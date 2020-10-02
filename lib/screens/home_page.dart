
import 'package:app/screens/landing/landing_p_2.dart';
import 'package:app/screens/landing/landing_p_1.dart';
import 'package:app/screens/landing/landing_p_3.dart';
import 'package:app/screens/landing/landing_p_4.dart';
import 'package:app/screens/landing/landing_p_5.dart';
import 'package:app/screens/landing/landing_p_6.dart';
import 'package:app/widgets/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '_scaffold.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return  ScaffoldWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LandingPartOne(),
          LandingPartTow(),
          SizedBox(height: screenSize.height * 0.15),
          LandingPartThree(),
          SizedBox(height: screenSize.height * 0.10),
          LandingPartFour(),
          SizedBox(height: screenSize.height * 0.15),
          LandingPartFive(),
          SizedBox(height: screenSize.height * 0.10),
          LandingPartSix(),
          SizedBox(height: screenSize.height / 10),
        ],
    ),);
  }

}
