import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';


class IntroductionAboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    double c_height = MediaQuery.of(context).size.height;
    return ResponsiveWidget.isSmallScreen(context) ?
    Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
      width: c_width,
      height: c_height * 0.22,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    )
    :
    Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
      width: c_width * 0.6,
      height: c_height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    )
    ;
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

/*  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }*/

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget =
        "Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.\n"
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..\n"
                "I Love Android Development, xD.\n\n"
                "=> I’m currently sleeping 😴 or working on my laptop 👨‍💻\n"
                "=> I’m good in Android Development and currently learning Web Development With Flutter💪.\n"
                "=> I’m looking to collaborate on Machine Learning & Python 🐍 projects.\n"
                "=> I Love Machine Learning and Open CV🌐\n"

            ;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(AboutintroWidget , style: TextStyle(fontWeight: FontWeight.w500 , color: Colors.black , fontFamily: 'Vazir' , fontSize: 16),),
      // crossAlignment: CrossAxisAlignment.center,
    ]);
  }
}
