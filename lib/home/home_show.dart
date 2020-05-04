import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeShowState();
  }
}

class HomeShowState extends State<HomeShow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(162, 146, 199, 0.8),
              Color.fromRGBO(51, 51, 63, 0.9),
            ],
            stops: [0.2, 1.0],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
          )),
          child: Center(
            child: Text('home'),
          ),
        ),
      ),
    );
  }
}
