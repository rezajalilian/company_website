import 'dart:collection';
import 'package:app/all_translations.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Questions extends StatelessWidget {

  Questions({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;

  final List<String> title = [
    allTranslations.text('p_3_ask_1_title'),
    allTranslations.text('p_3_ask_1_title'),
    allTranslations.text('p_3_ask_1_title'),
  ];
  final List<String> description = [
   allTranslations.text('p_3_ask_1_desc'),
   allTranslations.text('p_3_ask_1_desc'),
   allTranslations.text('p_3_ask_1_desc'),
  ];


  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context) ?
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:20.0),
        ...Iterable<int>.generate(title.length).map(
          (int pageIndex) =>  ExpansionTileCard(
              initialPadding: EdgeInsets.only(top: 10),
              shadowColor: Color(0xffffffff),
              baseColor: Color(0xffffffff),
              elevation: 0,
              expandedColor: Color(0xffffffff),
              title: Text(title[pageIndex], style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff343a40),
                  fontFamily: 'Vazir'
              ),),
              children: <Widget>[
                Align(
                  alignment: allTranslations.currentLanguage == 'fa' ? Alignment.centerRight : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      description[pageIndex],
                      style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 13,
                        color: Color(0xff444444),
                        height: 2
                      ),
                    ),
                  ),
                ),
              ]
          ),),

        ],
      ),
    )
    :
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:20.0),
          ...Iterable<int>.generate(title.length).map(
                (int pageIndex) =>  ExpansionTileCard(
                  initialPadding: EdgeInsets.only(top: 15),
                shadowColor: Color(0xffffffff),
                baseColor: Color(0xffffffff),
                elevation: 0,
                expandedColor: Color(0xffffffff),
                title: Text(title[pageIndex], style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff343a40),
                    fontFamily: 'Vazir'
                ),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        description[pageIndex],
                        style: TextStyle(
                            fontFamily: 'Vazir',
                            fontSize: 13,
                            color: Color(0xff444444),
                            height: 2
                        ),
                      ),
                    ),
                  ),
                ]
            ),),

        ],
      ),
    )
    ;
  }
}
