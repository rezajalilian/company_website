//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:app/extensions/hover_extensions.dart';
import 'package:flutter/rendering.dart';


class CategoryCard extends StatefulWidget {
  final String imageAssetUrl, categoryName;
  bool isSelected;
  Function onTap;
  CategoryCard({this.imageAssetUrl, this.categoryName, this.isSelected , this.onTap});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: widget.onTap,
        child: Container(
          margin: EdgeInsets.only(right: 14),
          child: Stack(
            children: <Widget>[
              /* ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: imageAssetUrl,
                height: 60,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),*/
              Container(
                height: 30,
                alignment: Alignment.center,
                padding: EdgeInsets.only( right: 10 ,left: 10  ),
                decoration: BoxDecoration(
                  color: widget.isSelected ? Color(0xff47B2E4) : Colors.transparent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  widget.categoryName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: widget.isSelected ? Color(0xffffffff) : Color(0xff444444),
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      );
  }
}