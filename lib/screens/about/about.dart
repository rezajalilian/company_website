import 'package:app/screens/_scaffold.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';


import 'MyPic_widget_desktop.dart';
import 'about_view_intro_desktop.dart';


class About extends StatelessWidget {
  About({Key key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {

    return ScaffoldWidget(
      child: Container(
        margin: ResponsiveWidget.isSmallScreen(context) ? EdgeInsets.only(top: 50) : EdgeInsets.only(top: 130),
        color: Color(0xffffffff),
        width: double.infinity,
        child:  Column(
          children: [
            ResponsiveWidget.isSmallScreen(context) ?
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('About' , style: TextStyle(
                        fontSize: 20 , color: Colors.black , fontFamily: 'Vazir' , fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                SizedBox(height: 30,),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyPicAboutDesktop(image: 'assets/images/about.png',),
                      SizedBox(width: 20,),
                      IntroductionAboutDesktop(),
                    ]
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyPicAboutDesktop(image: 'assets/images/123.png',),
                    IntroductionAboutDesktop(),
                  ],
                ),
                SizedBox(height: 10,),
                //  TeamWidgetDesktop(),
              ],
            )
            :
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('About' , style: TextStyle(
                        fontSize: 20 , color: Colors.black , fontFamily: 'Vazir' , fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyPicAboutDesktop(image: 'assets/images/about.png',),
                      SizedBox(width: 20,),
                      IntroductionAboutDesktop(),
                    ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntroductionAboutDesktop(),
                    MyPicAboutDesktop(image: 'assets/images/123.png',),
                  ],
                ),
                SizedBox(height: 10,),
                //  TeamWidgetDesktop(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

