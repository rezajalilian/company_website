import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  Team({
    Key key,
    @required this.screenSize,
    this.name,
    this.position,
    this.img,
  }) : super(key: key);

  final Size screenSize;
  final String name;
  final String position;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      height: 255,
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 255,
            decoration: BoxDecoration(

                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.cover)),
          ),
          Positioned(
            top: 175,
            right: 0,
            left: 0,
            child: Container(
              width: 255,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xff000000).withOpacity(0.2),
                boxShadow: [
                  /*BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),*/
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                         right: 30, left: 30, bottom: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff)),
                    ),
                  ),
/*                  Container(
                      width: 35,
                      child: Divider(
                        height: 1,
                        color: Color(0xffb5c1c6),
                      )
                  ),*/
                  Padding(
                    padding: EdgeInsets.only(
                         right: 10, left: 10, bottom: 10),
                    child: Text(
                      position,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
