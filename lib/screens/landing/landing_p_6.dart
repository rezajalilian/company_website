import 'package:app/widgets/form.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:app/all_translations.dart';


class LandingPartSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context) ?
    Container(
      padding: EdgeInsets.only(top: 20 , bottom: 20),
      width: double.infinity,
      /* color: Color(0xffF8FAFF),*/
      child: Padding(
        padding: EdgeInsets.only(
          left: screenSize.width / 15,
          right: screenSize.width / 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    allTranslations.text('p_6_title'),
                    style: TextStyle(fontSize: 42 , fontWeight: FontWeight.w700 , color: Color(0xfff0f1f3),height: 2.2 , fontFamily: 'Vazir'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 0,
                  left: 0,
                  child:Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      allTranslations.text('p_6_title'),
                      style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700 , color: Color(0xff5f687b),height: 2.2 , fontFamily: 'Vazir'),
                      textAlign: TextAlign.center,
                    ),
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Text(allTranslations.text('p_6_desc'),
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              fontFamily: 'Vazir',
            ),),
            SizedBox(height: 60,),
            ContactForm(),
          ],
        ),
      ),
    )
    :
    Container(
      padding: EdgeInsets.only(top: 20 , bottom: 20),
      width: double.infinity,
      /* color: Color(0xffF8FAFF),*/
      child: Padding(
        padding: EdgeInsets.only(right: 150 , left: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    allTranslations.text('p_6_title'),
                    style: TextStyle(fontSize: 52 , fontWeight: FontWeight.w700 , color: Color(0xfff0f1f3),height: 2.2 , fontFamily: 'Vazir'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 0,
                  left: 0,
                  child:Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      allTranslations.text('p_6_title'),
                      style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700 , color: Color(0xff5f687b),height: 2.2 , fontFamily: 'Vazir'),
                      textAlign: TextAlign.center,
                    ),
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Text(allTranslations.text('p_6_desc'),
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Vazir',
            ),),
            SizedBox(height: 60,),
            ContactForm(),
          ],
        ),
      ),
    )
    ;
  }
}
