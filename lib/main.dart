import 'package:app/locator.dart';
import 'package:app/routing/router.dart';
import 'package:app/routing/routing_constants.dart';
import 'package:app/screens/layout_template.dart';
import 'package:app/services/navigation_service.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:app/utils/authentication.dart';
import 'package:flutter/material.dart';
import 'package:app/all_translations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await allTranslations.init('en');
  setupLocator();
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future getUserInfo() async {
    await getUser();
    setState(() {});
    print(uid);
  }

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) {
        return brightness == Brightness.light
            ? ThemeData(
                fontFamily: 'Vazir',
                primarySwatch: Colors.blueGrey,
                backgroundColor: Colors.white,
                cardColor: Colors.blueGrey[50],
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey,
                    decorationColor: Colors.blueGrey[300],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.blueGrey[900],
                  ),
                  subtitle1: TextStyle(
                    color: Colors.black,
                  ),
                  headline1: TextStyle(color: Colors.blueGrey[800]),
                ),
                bottomAppBarColor: Colors.blueGrey[900],
                iconTheme: IconThemeData(color: Colors.blueGrey),
                brightness: brightness,
              )
            : ThemeData(
                fontFamily: 'Vazir',
                primarySwatch: Colors.blueGrey,
                backgroundColor: Colors.blueGrey[900],
                cardColor: Colors.black,
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey[200],
                    decorationColor: Colors.blueGrey[50],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.white,
                  ),
                  subtitle1: TextStyle(
                    color: Colors.blueGrey[300],
                  ),
                  headline1: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                bottomAppBarColor: Colors.black,
                iconTheme: IconThemeData(color: Colors.blueGrey[200]),
                brightness: brightness,
              );
      },
      themedWidgetBuilder: (context, data) => MaterialApp(
        title: 'وب سایت شرکت',
        theme: data,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: allTranslations.supportedLocales(),
/*        routes: {
          "/" : (context) => prepareScreen(new HomePage()),
        },*/
      //  builder: (context, child) => prepareScreen(LayoutTemplate(child: child,)),
        builder: (context, child) => LayoutTemplate(child: child,),
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: HomeRoute,
      ),
    );
  }

  prepareScreen(Widget screen , [TextDirection textDirection = TextDirection.rtl]) {
    return new Directionality(textDirection: allTranslations.currentLanguage == 'fa' ? TextDirection.rtl : TextDirection.ltr , child: screen);
  }

}
