import 'package:app/locator.dart';
import 'package:app/services/navigation_service.dart';
import 'package:flutter/material.dart';


class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final Color color;
  final double size;
  const NavBarItem(this.title, this.navigationPath, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: size , color: color ,fontWeight: FontWeight.w500),
      ),
    );
  }
}