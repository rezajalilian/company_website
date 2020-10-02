import 'package:app/all_translations.dart';
import 'package:app/widgets/Team_list.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';



class LandingPartFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context) ?
    Container(
      padding: EdgeInsets.only(top: 20 , bottom: 30),
      width: double.infinity,
      color: Color(0xfff3f5fa),
      child: Padding(
        padding: EdgeInsets.only(
          left: screenSize.width / 15,
          right: screenSize.width / 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    allTranslations.text('p_5_title'),
                    style: TextStyle(fontSize: 52 , fontWeight: FontWeight.w700 , color: Color(0xfff0f1f3),height: 2.2 , fontFamily: 'Vazir'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child:Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      allTranslations.text('p_5_title'),
                      style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700 , color: Color(0xff5f687b),height: 2.2 , fontFamily: 'Vazir'),
                      textAlign: TextAlign.center,
                    ),
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Text( allTranslations.text('p_5_desc'),
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              fontFamily: 'Vazir',
            ),),
            SizedBox(height: 60,),
            Container(
              height: 400 ,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_1') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-4.jpg',position: 'CTO',),
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_2') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-3.jpg',position: 'Product Manager',),
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_3') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-2.jpg',position: 'Chief Executive Officer',),
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_4') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-1.jpg',position: 'Accountant',),
                ],
              ),
            )
          ],
        ),
      ),
    )
    :
    Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20 , bottom: 30),
      width: double.infinity,
      color: Color(0xffF9F9FA),
      child: Padding(
        padding: EdgeInsets.only(right: 10 , left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    allTranslations.text('p_5_title'),
                    style: TextStyle(fontSize: 42 , fontWeight: FontWeight.w700 , color: Color(0xfff0f1f3),height: 2.2 , fontFamily: 'Vazir'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child:Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      allTranslations.text('p_5_title'),
                      style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700 , color: Color(0xff5f687b),height: 2.2 , fontFamily: 'Vazir'),
                      textAlign: TextAlign.center,
                    ),
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Text(allTranslations.text('p_5_desc'),
              textAlign: TextAlign.justify,
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Vazir',
            ),),
            SizedBox(height: 60,),
            Container(
              height: 400 ,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_1') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-4.jpg',position: 'CTO',),
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_2') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-3.jpg',position: 'Product Manager',),
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_3') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-2.jpg',position: 'Chief Executive Officer',),
                  Team(screenSize : screenSize , name: allTranslations.text('p_5_team_4') , img: 'https://bootstrapmade.com/demo/themes/Rapid/assets/img/team-1.jpg',position: 'Accountant',),
                ],
              ),
            )
          ],
        ),
      ),
    )
    ;
  }
}
