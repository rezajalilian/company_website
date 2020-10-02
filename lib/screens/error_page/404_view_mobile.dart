import 'package:app/routing/routing_constants.dart';
import 'package:app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../all_translations.dart';
import 'package:app/extensions/hover_extensions.dart';

import '../../locator.dart';

class NotFoundPageMobile extends StatelessWidget {
  const NotFoundPageMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AboutTitle = " error 404 "
        .text
        .white
        .xl
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    final errorText = "404 "
        .text
        .white
        .lineHeight(1)
        .size(context.isMobile ? 50 : 100)
        .bold
        .make()
        .shimmer();

    return Container(
      color: Color(0xffffffff),
      width: double.infinity,
      height: 600,
      child:  ListView(
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Align(
              alignment: Alignment.center,
              child: null,
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 0 , right: 0 , top: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  errorText,
                  SizedBox(height: 15,),
                  Text(allTranslations.text('error_404_title') ,style: TextStyle(fontFamily: 'Vazir' , fontSize: 25 , fontWeight: FontWeight.w700 , color: Colors.white), ),
                  SizedBox(height: 15,),
                  Text(allTranslations.text('error_404_desc') ,style: TextStyle(fontFamily: 'Vazir' , fontSize: 18 , fontWeight: FontWeight.w400 , color: Colors.white), ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      locator<NavigationService>().navigateTo(HomeRoute);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 165,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green[500] , width: 3)
                      ),
                      child: Center(
                        child: Text(allTranslations.text('error_404_btn') ,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black , fontFamily: 'Vazir' , fontSize: 16 , fontWeight: FontWeight.w500),
                        ),
                      ),
                    ).moveUpOnHover.showCursorOnHover,
                  )
                ]
            ),
          ),

        ],
      ),
    );
  }
}
