import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sliver_tracker/flutter_sliver_tracker.dart';

class AnimaNewTest extends StatefulWidget {
  @override
  _AnimaNewTestState createState() => _AnimaNewTestState();
}

class _AnimaNewTestState extends State<AnimaNewTest>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
        lowerBound: -1.0,
        upperBound: 1.0,
        value: 0.0,
        duration: Duration(milliseconds: 10000),
        vsync: this);
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext context, Widget child) {
                  return ClipPath(
                    clipper: CustomerHeaderClipPath(animationController.value),
                    child: buildContainer(context),
                  );
                }),
            AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext con, Widget child) {
                  return ClipPath(
                    clipper: CustomerHeaderClipPath(animationController.value),
                    child: buildContainerBody(context),
                  );
                })
          ],
        ),
      ],
    ));
  }

  Container buildContainerBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.yellowAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      height: 200,
      width: MediaQuery.of(context).size.width,
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.yellow, Colors.redAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
    );
  }
}

class CustomerBodyClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height / 2);

    //构建二阶曲线
    path.quadraticBezierTo(
        //开始点
        size.width,
        size.height,
        //结束点
        size.width,
        size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip

    return true;
  }
}

class CustomerHeaderClipPath extends CustomClipper<Path> {
  double process;

  CustomerHeaderClipPath(this.process); //定义裁剪规则
  @override
  getClip(Size size) {
    //构建path
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height / 2);
    //修改下控制点
    double controllerCenterX =
        size.width * 0.5 + (size.width * 0.6 + 1) * sin(process * pi);
    double controllerCenterY =
        size.height * 0.8 + (size.width * 0.6 + 1) * cos(process * pi);

    //构建二阶曲线
    path.quadraticBezierTo(
        //开始点
        controllerCenterX,
        controllerCenterY,
        //结束点
        size.width,
        size.height * 0.8);
    path.lineTo(size.width, 0);

    return path;
  }

  //是否刷新
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
