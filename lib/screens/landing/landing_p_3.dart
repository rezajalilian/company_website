import 'package:app/widgets/f_a_q%20Questions.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';
import '../../all_translations.dart';


class  LandingPartThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color(0xffF3F5FA),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ! ResponsiveWidget.isSmallScreen(context) ?
      Row(
        children: [
          Expanded(
            child: Container(
              width: screenSize.width / 2,
              color: Color(0xffF3F5FA),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 40 , horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Eum ipsam laborum deleniti velit pariatur architecto aut nihil' , style: TextStyle(
                              fontFamily: 'Vazir' , fontSize: 34 , color: Color(0xff37517e) , fontWeight: FontWeight.w500
                          ),),
                          SizedBox(height: 10,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit' , style: TextStyle(
                              fontSize:15 , color: Color(0xff848484) , fontWeight: FontWeight.w400
                          ),),
                          SizedBox(height: 15,),
                          Questions()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: screenSize.width / 2,
              color: Color(0xffF3F5FA),
              child: Image(
                image: AssetImage('assets/images/why_us.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      )
      :
      Column(
        children: [
           Container(
              width: screenSize.width,
              color: Color(0xffF3F5FA),
              child: Image(
                image: AssetImage('assets/images/why_us.png'),
                fit: BoxFit.cover,
              ),
            ),
           SizedBox(height: 10,),
           Container(
              width: screenSize.width,
              color: Color(0xffF3F5FA),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 40 , horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Eum ipsam laborum deleniti velit pariatur architecto aut nihil' , style: TextStyle(
                              fontFamily: 'Vazir' , fontSize: 34 , color: Color(0xff37517e) , fontWeight: FontWeight.w500
                          ),),
                          SizedBox(height: 10,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit' , style: TextStyle(
                              fontSize:15 , color: Color(0xff848484) , fontWeight: FontWeight.w400
                          ),),
                          SizedBox(height: 15,),
                          Questions()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
        ],
      )
      ,
    );
  }
}
