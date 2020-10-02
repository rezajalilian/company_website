import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';


class MyPicAboutDesktop extends StatelessWidget {
  final String image;
  const MyPicAboutDesktop({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Align(
            alignment: Alignment.topCenter,
           child: ResponsiveWidget.isSmallScreen(context) ? SizedBox( child: MyPicWidget(image:image ,)) : SizedBox(height: 400, width: 400, child: MyPicWidget(image:image ,)),
          ),
        ],
      ),
    );
  }
}

class MyPicWidget extends StatelessWidget {
  final String image;
  const MyPicWidget({
    Key key, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Align(
        alignment: Alignment.topCenter,
        child: ResponsiveWidget.isSmallScreen(context) ? Container(

          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        )
        :
        Container(
          height: size.height / 2,
          width: size.width / 3,
          child: Image(
            image: AssetImage(image),
          ),
        )

        ,
      ),
    );
  }
}
