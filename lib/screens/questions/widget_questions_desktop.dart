import 'package:app/widgets/responsive.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';




class QuestionsWidgetDesktop extends StatefulWidget {

  QuestionsWidgetDesktop({
    Key key,
    @required this.screenSize,
  }) : super(key: key);
  final Size screenSize;

  @override
  _QuestionsWidgetDesktopState createState() => _QuestionsWidgetDesktopState();
}

class _QuestionsWidgetDesktopState extends State<QuestionsWidgetDesktop> {
  final List<String> title = [
    'Feugiat scelerisque varius morbi enim nunc?',
    'Dolor sit amet consectetur adipiscing elit?',
    'Tempus quam pellentesque nec nam aliquam sem et tortor consequat?',
  ];

  final List<String> description = [
    'Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.',
    'Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis',
    'Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in.',
  ];


  _set(){
    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: ResponsiveWidget.isSmallScreen(context) ?
      const EdgeInsets.symmetric(horizontal: 15.0)
          :
      const EdgeInsets.symmetric(horizontal: 150.0)
      ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:20.0),
          ...Iterable<int>.generate(title.length).map(
                (int pageIndex) =>  ExpansionTileCard(
                onExpansionChanged: _set(),
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
                    alignment: Alignment.centerLeft ,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        description[pageIndex],
                        style: TextStyle(
                            fontFamily: 'Vazir',
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.8),
                            height: 2,
                          fontWeight: FontWeight.w500
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
