import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn();
  @override
  Widget build(BuildContext context) {
    return (new Container(
      width: MediaQuery.of(context).size.width-40,
      height: 60.0,
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.4),
            end: FractionalOffset(0.9, 0.7),
            stops: [0.1, 0.9],
            colors: [Colors.blue, Colors.deepPurple]),
        borderRadius: new BorderRadius.all(const Radius.circular(25.0)),
      ),
      child: new Text(
        "Sign In",
        style: new TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      ),
    ));
  }
}