import 'package:flutter/material.dart';

class TagItem extends StatelessWidget {

  final String name , url ;

  const TagItem({Key key, this.name, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(left: 5 , right: 5),
        padding: EdgeInsets.only(right: 5 , left: 5 , top: 5 , bottom: 5),
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xff9276F8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: new Text('#' , style: TextStyle(fontSize: 13 , color: Colors.black87 , fontWeight: FontWeight.w500),),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 3  , right: 3),
                child: Text(name , style: TextStyle(
                    fontSize: 13 , color: Colors.white , fontWeight: FontWeight.w500
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
