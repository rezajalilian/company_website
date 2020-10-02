import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';

class RelatedPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: 390,
      width: ResponsiveWidget.isSmallScreen(context) ? screenSize.width * 0.90  : screenSize.width * 0.60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _item(
            title : 'Building a Responsive Website using Flutter',
            image : 'https://www.filledstacks.com/assets/static/033.07cc2b7.ebdf16d08a54fd37bc4cd5d1a0b0767f.jpg',
            desc : 'Here we cover the process involved in making your Flutter website responsive.',
            date : '8 November 2019'
          ),
          _item(
              title : 'Flutter Web Hover and Mouse Cursor',
              image : 'https://www.filledstacks.com/assets/static/036.07cc2b7.565537f6ed8a2f63b2007a62837ddbff.jpg',
              desc : 'In this tutorial we will be adding the basic hover functionality found on most websites',
              date : '6 December 2019'
          ),
          _item(
              title : 'Template Layouts and Navigation in Flutter Web',
              image : 'https://www.filledstacks.com/assets/static/034.07cc2b7.52d07852af687a77985f54c5eedecb82.jpg',
              desc : 'In this tutorial we build a template page layout that stays the same for all views. We also cover navigation for Flutter web',
              date : '13 November 2019'
          ),
          _item(
              title : 'Flutter Web Hover and Mouse Cursor',
              image : 'https://www.filledstacks.com/assets/static/036.07cc2b7.565537f6ed8a2f63b2007a62837ddbff.jpg',
              desc : 'In this tutorial we will be adding the basic hover functionality found on most websites',
              date : '6 December 2019'
          ),
        ],
      ),
    );
  }

  Widget _item({String title , String image , String desc , String date,}) {
      return  Container(
        width: 275,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft:  const  Radius.circular(8),
                bottomRight: const  Radius.circular(8)
            ),
        ),
        child: Column(
          children: [
            Container(
              height: 155,
              width: 275,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft:  const  Radius.circular(8),
                      topRight: const  Radius.circular(8)
                  ),
                  image: DecorationImage(
                    image: NetworkImage(image),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(title , style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child:  Text(desc , style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Icon(Icons.calendar_today , color: Color(0xff000000),size: 14,),
                  ),
                  SizedBox(width: 2,),
                  Text('13 November 2019', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Color(0xff000000)),)
                ],
              ),
            )
          ],
        ),
      );
  }
}
