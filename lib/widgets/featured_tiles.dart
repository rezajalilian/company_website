import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../all_translations.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/undraw_team_chat.png',
    'assets/images/undraw_speech.png',
    'assets/images/undraw_done.png',
  ];

  final List<String> title = [
    allTranslations.text('p_2_sec_3_title'),
    allTranslations.text('p_2_sec_2_title'),
    allTranslations.text('p_2_sec_1_title'),
  ];
  final List<String> description = [
    allTranslations.text('p_2_sec_1_desc'),
    allTranslations.text('p_2_sec_2_desc'),
    allTranslations.text('p_2_sec_3_desc'),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenSize.width / 2.5,
                              width: screenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  assets[pageIndex],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: screenSize.height / 70,
                                ),
                                child: Text(
                                  title[pageIndex],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Vazir',
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle1
                                        .color,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(
                              width: 310,
                              child: Text(
                                description[pageIndex],
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Vazir',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,

                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...Iterable<int>.generate(assets.length).map(
                          (int pageIndex) => Column(
                        children: [
                          SizedBox(
                            height: screenSize.width / 6,
                            width: screenSize.width / 3.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                assets[pageIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 40,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  title[pageIndex],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Vazir',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: 310,
                                  child: Text(
                                    description[pageIndex],
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Vazir',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: Container(
                    width: 180,
                    height: 31,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Line_01.png'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  right: screenSize.width * 0.22,
                  top: 100,
                ),
                Positioned(
                    child: Container(
                    width: 180,
                    height: 31,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Line_01.png'),
                      fit: BoxFit.cover
                        )
                        ),
                      ),
                    right: screenSize.width * 0.52,
                    top: 100,
                ),
              ],
            ),
          );
  }
}
