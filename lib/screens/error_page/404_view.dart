import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../_scaffold.dart';
import '404_view_desktop.dart';
import '404_view_mobile.dart';

class NotFoundPageView extends StatelessWidget {
  const NotFoundPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: ScreenTypeLayout(
        mobile: NotFoundPageMobile(),
        desktop: NotFoundPageDesktop(),
      ),
    );
  }
}

