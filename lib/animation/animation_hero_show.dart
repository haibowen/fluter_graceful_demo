import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutteruidemo/widget/sign_in.dart';
import 'package:flutteruidemo/widget/stagger_animation.dart';


class AnimationHeroShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationHeroShowState();
  }
}

class AnimationHeroShowState extends State<AnimationHeroShow>
    with TickerProviderStateMixin {
  AnimationController animationController;
  var animationStatus = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      await animationController.forward();
      await animationController.reverse();
    } on TickerCanceled {}
  }

  Future <Null> _onWillPop() {
    return showDialog(context: context, child: AlertDialog(
      title: Text('Really?'),
      actions: <Widget>[
        FlatButton(onPressed: () {
          Navigator.of(context).pop(false);
        },
          child: Text('exit'),),
        FlatButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "");
          },
          child: Text('sure'),

        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 0.4;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    // TODO: implement build
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(

          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromRGBO(162, 146, 199, 0.8),
                    Color.fromRGBO(51, 51, 63, 0.9),
                  ],
                  stops: [0.2, 1.0],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.0, 1.0),
                )
            ),
            child: ListView(
              padding: EdgeInsets.all(0.0),
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Container(
                          height: 300,
                        )
                      ],
                    ),
                    animationStatus == 0
                        ? new Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: new InkWell(
                          onTap: () {
                            setState(() {
                              animationStatus = 1;
                            });
                            _playAnimation();
                          },
                          child: new SignIn()),
                    )
                        : new StaggerAnimation(
                        buttonController:
                        animationController.view),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
