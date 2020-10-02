import 'package:app/screens/_scaffold.dart';
import 'package:app/screens/questions/widget_questions_desktop.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';


class Questions extends StatefulWidget {
  @override
  _QuestionsViewState createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ScaffoldWidget(
      child: Container(
        margin: EdgeInsets.only(top: 130 , bottom: 100),
        width: double.infinity,
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Align(
                alignment: Alignment.center,
                child: Text('questions' , style: TextStyle(
                    fontSize: 20 , color: Colors.black , fontFamily: 'Vazir' , fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: ResponsiveWidget.isSmallScreen(context) ?
                            screenSize.width * 0.95
                            :
                            screenSize.width * 0.60,
                    child: Text('Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.',
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 1.5 , fontSize:  16 ,fontFamily: 'Vazir',fontWeight: FontWeight.w500, color: Color(0xff444444), ),
                    )

                ),
              ),
            ),
            SizedBox(height: 30,),
            QuestionsWidgetDesktop()
          ],
        ),
      ),
    );
  }
}
