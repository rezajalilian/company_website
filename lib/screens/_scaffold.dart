import 'package:app/services/navigation_service.dart';
import 'package:app/widgets/bottom_bar.dart';
import 'package:app/widgets/explore_drawer.dart';
import 'package:app/widgets/responsive.dart';
import 'package:app/widgets/top_bar_contents.dart';
import 'package:app/widgets/web_scrollbar.dart';
import 'package:flutter/material.dart';

import '../all_translations.dart';
import '../locator.dart';


class ScaffoldWidget extends StatefulWidget {

  final Widget child;

  const ScaffoldWidget({Key key, this.child}) : super(key: key);

  @override
  _ScaffoldWidgetState createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  bool isExpanded = false;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return  prepareScreen(
        Scaffold(
          backgroundColor: Color(0xffffffff),
          extendBodyBehindAppBar: true,
          appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              iconTheme: new IconThemeData(color: Colors.white),
              backgroundColor: Color(0xff37517E),
              elevation: 0,
              centerTitle: true,
              actions: [
          /*IconButton(
                  icon: Icon(Icons.brightness_6),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    DynamicTheme.of(context).setBrightness(
                        Theme.of(context).brightness == Brightness.dark
                            ? Brightness.light
                            : Brightness.dark);
                    print(Theme.of(context).brightness);
                  },
                ),*/
          IconButton(
            tooltip: checkLanguage(),
            icon: Icon(Icons.language , color: Colors.white,),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              _changeLanguage(context,changeLanguage());
            },
          ),
        ],
        title: Text(
          'MRFLUTTER1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Vazir',
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      )
          : PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: TopBarContents(_opacity),
      ),
          drawer: ExploreDrawer(),
          body: WebScrollbar(
            color: Colors.grey,
            backgroundColor: Color(0xffF5F5F5),
            width: 10,
            heightFraction: 0.3,
            controller: _scrollController,
            child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              widget.child,
              BottomBar(),
            ],
          ),  // get widget // show pages white on scaffold
        ),
      ),
    ));
  }

  prepareScreen(Widget screen , [TextDirection textDirection = TextDirection.rtl]) {
    return new Directionality(textDirection: allTranslations.currentLanguage == 'fa' ? TextDirection.rtl : TextDirection.ltr , child: screen);
  }

  _changeLanguage(BuildContext context,String lang) async {
    await allTranslations.setNewLanguage(lang);
    locator<NavigationService>().navigateTo('/home');
    //Navigator.pushReplacementNamed(context, '/');
  }

  checkLanguage() {
    return allTranslations.currentLanguage == 'fa'
        ? 'تغییر زبان'
        : 'change language';
  }

  changeLanguage() {
    return allTranslations.currentLanguage == 'fa'
        ? 'en'
        : 'fa';
  }
}

