import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../all_translations.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key key,
    this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return !ResponsiveWidget.isSmallScreen(context) ?
    Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(),
                Text(
                  allTranslations.text('p_2_title'),
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Vazir',
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 150 , left: 150),
                  child: Text(
                    allTranslations.text('p_2_desc'),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13 , color: Color(0xff0e2a3c) , height: 2 , fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10),
              ],
            )

    )
    :
    Padding(
        padding: EdgeInsets.only(
          top: screenSize.height * 0.06,
          left: screenSize.width / 15,
          right: screenSize.width / 15,
          bottom:screenSize.width / 15
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(),
            Text(
              allTranslations.text('p_2_title'),
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Vazir',
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 20 , left: 20),
              child: Text(
                allTranslations.text('p_2_desc'),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13 , color: Color(0xff0e2a3c) , height: 2),
              ),
            ),
            SizedBox(height: 10),
          ],
        )

    )
    ;
  }
}
