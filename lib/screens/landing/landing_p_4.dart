import 'package:app/helpers/responsive_helper.dart';
import 'package:app/models/article_model.dart';
import 'package:app/models/category_model.dart';
import 'package:app/services/api_servies.dart';
import 'package:app/services/navigation_service.dart';
import 'package:app/widgets/category_card.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:masonry_grid/masonry_grid.dart';
import '../../all_translations.dart';
import 'package:app/extensions/hover_extensions.dart';
import '../../locator.dart';


class LandingPartFour extends StatefulWidget {
  @override
  _LandingPartFourState createState() => _LandingPartFourState();
}

class _LandingPartFourState extends State<LandingPartFour> {

  List<Article> _articles = [];
  List<CategorieModel> categories = List<CategorieModel>();
  int pageSize = 8;
  String apiKey = 'ce9f8d1d6e6247629cdad766d86b331f';
  int currentColorIndex = 0;
  bool isSelected;
  bool _loading = true;



  @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();
   // categories = getCategories();
    categories = getCategories();
    getNews(apiKey , 'Technology' , pageSize);
  }

  void getNews(String apiKey , String category , int pageSize) async {
    News news = News();
    await news.getNews(apiKey , category  , pageSize);
    _articles = news.news;
    setState(() {
      _loading = false;
      print(_articles);
    });
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _buildArticlesGrid(MediaQueryData mediaQuery) {
    List<Widget> tiles = [];
    _articles.forEach((article) {
      tiles.add(_buildArticleTile(article, mediaQuery));
    });

    return Padding(
      padding: responsivePadding(mediaQuery),
      child: MasonryGrid(
        column: ResponsiveWidget.isSmallScreen(context) ? 1 : 3,
        mainAxisSpacing: 35,
        crossAxisSpacing: 35,
        children: tiles,
      ),
    );

  }

  _buildArticleTile(Article article, MediaQueryData mediaQuery) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 20.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
      child: GestureDetector(
          onTap: (){
           // NavBarItem('Episodes', AboutRoute);
             locator<NavigationService>().navigateTo('/episodes');
            /*Navigator.push(context, MaterialPageRoute(
                builder: (context) => showPost(
                 author: article.author,
                 title: article.title,
                 desc: article.description,
                 content: article.content,
                 url: article.url,
                 urlToImage: article.imageUrl,
                 published: article.publshedAt,
                )
            ));*/
          },
          child: Column(
            children: <Widget>[
              Image(
                image: article.imageUrl != null ? NetworkImage(article.imageUrl) : AssetImage('assets/images/placeholder.jpg'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Text(
                      article.title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'Vazir',
                          color: Color(0xff000000)
                      ),
                      softWrap: true,
                    ),
                    SizedBox(height: 8,),
                    Text(
                      '',
                      style: TextStyle(fontSize: 13, fontFamily: 'Vazir' , color: Colors.black.withOpacity(0.8) ,fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.access_time , color: Colors.grey,size: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5 , right: 5),
                          child: Text(
                            article.duration.toString() ?? '',
                            style: TextStyle(fontSize: 12 , color: Colors.grey ,),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    ).showCursorOnHover;
  }



  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: double.infinity,
      color: Color(0xffffffff),
      padding:
      ResponsiveWidget.isSmallScreen(context) ?
      EdgeInsets.only(right: 10 , left: 10 , top: 40 , bottom: 140)
      :
      EdgeInsets.only(right: 160 , left: 160 , top: 40 , bottom: 140),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  allTranslations.text('p_4_title'),
                  style: TextStyle(fontSize: 52 , fontWeight: FontWeight.w700 , color: Color(0xfff0f1f3),height: 2.2 , fontFamily: 'Vazir'),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: 40,
                right: 0,
                left: 0,
                child:Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    allTranslations.text('p_4_title'),
                    style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w700 , color: Color(0xff5f687b),height: 2.2 , fontFamily: 'Vazir'),
                    textAlign: TextAlign.center,
                  ),
                ),)
            ],
          ),
          SizedBox(height:10,),
          Text( allTranslations.text('p_4_desc'),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Vazir',
            ),),
          SizedBox(height: 20,),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      imageAssetUrl: categories[index].imageAssetUrl,
                      categoryName: categories[index].categorieName,
                      isSelected : isSelected = currentColorIndex == index,
                      onTap: () {
                        setState(() {
                          currentColorIndex = index;
                          getNews(apiKey , categories[index].categorieName , pageSize);
                        });
                      },
                    ).showCursorOnHover;
                  }),
            ),
          ),
          SizedBox(height: 60,),
          !_loading
              ? _buildArticlesGrid(mediaQuery)
              : Center(
                  child: CircularProgressIndicator(),
          ),
        ],
      )
    );
  }
}

// You can pass any object to the arguments parameter. In this example,
// create a class that contains both a customizable title and message.
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}