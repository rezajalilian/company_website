import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({this.type, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: Color(0xff5f687b).withOpacity(0.5),
            fontSize: 15,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xff5f687b),
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
