import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sa_stateless_animation/sa_stateless_animation.dart';
import 'package:supercharged/supercharged.dart';

void main() => runApp(MaterialApp(home: AnimationDemo()));

class AnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AnimationDemoState();
}


class AnimationDemoState extends State<AnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(vsync: this , duration: new Duration(milliseconds: 6000));

    controller.forward();

    controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        controller.repeat();
      }
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  _playAnimation() async {
    try {
      await controller.forward();
      await controller.reverse();
    } on TickerCanceled {}
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
        new StaggerAnimation(
            controller : controller.view
        );
  }

}

class StaggerAnimation extends StatelessWidget {

  StaggerAnimation({ this.controller }) :

        transform = Tween<double>(
            begin: 30 ,
            end: -80
        ).animate(
            new CurvedAnimation(parent: controller, curve: new Interval(0.0, 0.3000 , curve: Curves.easeInOut))
        ),
        transform2 = Tween<double>(
            begin: -80,
            end: 30
        ).animate(
           new CurvedAnimation(parent: controller, curve: new Interval(0.3000, 0.6000 , curve: Curves.easeInOutBack))
        );

  final Animation<double> controller;
  final Animation<double> transform;
  final Animation<double> transform2;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
        animation: controller,
        builder: buildAnimation
    );
  }


  Widget buildAnimation(BuildContext context , Widget child) {
    return MirrorAnimation<double>(
      tween: (30.0).tweenTo(-50.0), // <-- value for offset x-coordinate
      duration: 3.seconds,
      curve: Curves.easeInOutSine, // <-- non-linear animation
      builder: (context, child, value) {
        return Transform.translate(
          offset: Offset(0, value), // <-- use animated value for x-coordinate
          child: child,
        );
      },
      child: const Image(
        image: AssetImage('assets/images/hero-img.png'),
      ),
    );
  }


}