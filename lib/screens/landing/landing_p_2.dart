import 'package:app/widgets/featured_heading.dart';
import 'package:app/widgets/featured_tiles.dart';
import 'package:flutter/material.dart';


class LandingPartTow  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          FeaturedHeading(screenSize: screenSize,),
          FeaturedTiles(screenSize: screenSize)
        ],
      ),
    );
  }
}
