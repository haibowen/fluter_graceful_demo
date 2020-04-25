import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPageOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationPageOneState();
  }
}

class AnimationPageOneState extends State<AnimationPageOne>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn);

    animation = new Tween(begin: 0.0, end: 400.0).animate(animation);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //动画执行结束时反向执行动画
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //动画恢复到初始状态时执行动画（正向）
        animationController.forward();
      }
    });
    //启动动画
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        color: Colors.purpleAccent.withOpacity(0.5),
        child:

//
//        FadeTransition(
//          child: Image.asset('images/center.jpg'),
//          opacity: animation,
//        )
//
        GrowTranslation(
          child: Image.asset('images/center.jpg'),
          animation: animation,
        )

    );
  }
}

//
class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;

    // TODO: implement build
    return Center(
      child: Image.asset(
        'images/test.jpg',
        width: animation.value,
        height: animation.value,
      ),
    );
  }
}

//放大动画封装

class GrowTranslation extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  GrowTranslation({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context,Widget child){
          return Container(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
