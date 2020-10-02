import 'package:app/routing/routing_constants.dart';
import 'package:app/screens/about/about.dart';
import 'package:app/screens/error_page/404_view.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/questions/questions_view_desktop.dart';
import 'file:///C:/Users/plus/app/lib/screens/error/show_post.dart';
import 'package:flutter/material.dart';
import 'package:app/extensions/string_extensions.dart';



Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name.getRoutingData;
  switch (routingData.route) {

    case HomeRoute:
      return _getPageRoute(HomePage(), settings);

    case AboutRoute:
      return _getPageRoute(About(), settings);

    case QuestionsRoute:
      return _getPageRoute(Questions(), settings);

    case EpisodesRoute:
      return _getPageRoute(showPost(data: '',), settings);

    case EpisodeDetailsRoute:
      var id = int.tryParse(routingData['id']); // Get the id from the data.
      return _getPageRoute(showPost(data:'',), settings);

    case pageNoteFoundRoute:
      return _getPageRoute(NotFoundPageView(), settings);

    default:
      return _getPageRoute(NotFoundPageView(), settings);

  }
}



PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
    settings: RouteSettings(name: routeName),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}
