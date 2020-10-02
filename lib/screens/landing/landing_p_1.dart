import 'package:app/animation/rocket_animation.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:app/extensions/hover_extensions.dart';
import '../../all_translations.dart';



class LandingPartOne extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 600,
      color: Color(0xff37517E),
      child: !ResponsiveWidget.isSmallScreen(context) ?
      Padding(
        padding: EdgeInsets.only(top: 40 , right: 10 , left: 10 , bottom: 30),
        child: Row(
          children: [
            Container(
              width: screenSize.width * 0.58,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50 , right: 50),
                          child: SizedBox(
                            width: 600,
                            child: Text(
                              allTranslations.text('text_1'),
                              style: TextStyle(fontSize: 45 , color: Color(0xffffffff) , fontWeight: FontWeight.bold , fontFamily: 'Vazir',),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 50 , right: 50),
                          child: Text(
                            allTranslations.text('text_2'),
                            textAlign:  allTranslations.currentLanguage == 'en'? TextAlign.left : TextAlign.right,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Vazir',
                              fontWeight: FontWeight.w500,
                              color: Color(0xffAFB9CB),

                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left: 50 , right: 50),
                          child: Container(
                            width: 187,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff47B2E4),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xff47B2E4)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff47B2E4).withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                  offset: Offset(0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Center(
                                child: Text(allTranslations.text('btn_start_text'), style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                              ).showCursorOnHover,
                            ),
                          ).moveUpOnHover,
                        )
                      ],
                    )
                ),
              ),
            ),
            Container(
              width: screenSize.width * 0.40,
              height: 500,
              margin: EdgeInsets.only(top: 100),
              child: AnimationDemo(),
            ),
          ],
        ),
      )
      :
      Padding(
        padding: EdgeInsets.only(top: 40 , right: 10 , left: 10 , bottom: 30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(right: 10 , left: 10),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20 , right: 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              allTranslations.text('text_1'),
                              style: TextStyle(fontSize: 35 , color: Color(0xffffffff) , fontWeight: FontWeight.bold , fontFamily: 'Vazir',),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20 , right: 20),
                          child: Text(
                            allTranslations.text('text_2'),
                            textAlign:  allTranslations.currentLanguage == 'fa'? TextAlign.right : TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Vazir',
                              fontWeight: FontWeight.w500,
                              color: Color(0xffAFB9CB),

                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20 , right: 20),
                          child: Container(
                            width: 187,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff47B2E4),
                              border: Border.all(
                                  width: 1,
                                  color: Color(0xff47B2E4)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff47B2E4).withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                  offset: Offset(0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Center(
                                child: Text(allTranslations.text('btn_start_text'), style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
            ),

          ],
        ),
      )
      ,
    );
  }
}
