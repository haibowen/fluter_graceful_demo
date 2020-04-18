import "package:flutter/material.dart";

import 'gradient_const.dart';

void main() {
  runApp(SignPageOne());
}

class SignPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('显示'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 24.0),
          decoration: BoxDecoration(gradient: SIGNUP_BACKGROUND),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Center(
                  child: CircleAvatar(
                //头像半径
                radius: 60,
                //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                backgroundImage: NetworkImage(
                  'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg',
                ),
              )),
              headlinesWidget(),
              emailTextFieldWidget(),
              passwordTextFieldWidget(),
              loginButtonWidget(),
              signupWidget()
            ],
          ),
        ),
      ),
    );
  }
}

Widget signupWidget() {
  return Container(
    margin: EdgeInsets.only(left: 48.0, top: 32.0),
    child: Row(
      children: <Widget>[
        Text(
          'Don\'t have an account?',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        FlatButton(
          onPressed: () {
            print('Sign Up button pressed');
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
                color: Color(0xff353535),
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
        )
      ],
    ),
  );
}

Widget passwordTextFieldWidget() {
  return Container(
    margin: EdgeInsets.only(left: 32.0, right: 16.0),
    child: TextField(
      style: hintAndValueStyle,
      obscureText: true,
      decoration: new InputDecoration(
          fillColor: Color(0x3305756D),
          filled: true,
          contentPadding: new EdgeInsets.fromLTRB(40.0, 30.0, 10.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(12.0),
              borderSide: BorderSide.none),
          hintText: 'Password',
          hintStyle: hintAndValueStyle),
    ),
  );
}

Widget emailTextFieldWidget() {
  return Container(
    margin: EdgeInsets.only(left: 16.0, right: 32.0, top: 32.0),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(0.0, 16.0)),
        ],
        borderRadius: new BorderRadius.circular(12.0),
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.4),
            end: FractionalOffset(0.9, 0.7),
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [
              0.2,
              0.9
            ],
            colors: [
              Color(0xffFFC3A0),
              Color(0xffFFAFBD),
            ])),
    child: TextField(
      style: hintAndValueStyle,
      decoration: new InputDecoration(
          suffixIcon: Icon(IconData(0xe902, fontFamily: 'Icons'),
              color: Color(0xff35AA90), size: 10.0),
          contentPadding: new EdgeInsets.fromLTRB(40.0, 30.0, 10.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(12.0),
              borderSide: BorderSide.none),
          hintText: 'Email',
          hintStyle: hintAndValueStyle),
    ),
  );
}

Widget headlinesWidget() {
  return Container(
    margin: EdgeInsets.only(left: 48.0, top: 32.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'WELCOME BACK!',
          textAlign: TextAlign.left,
          style: TextStyle(
              letterSpacing: 3,
              fontSize: 20.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 48.0),
          child: Text(
            'Log in \nto continue.',
            textAlign: TextAlign.left,
            style: TextStyle(
              letterSpacing: 3,
              fontSize: 32.0,
              fontFamily: 'Montserrat',
            ),
          ),
        )
      ],
    ),
  );
}

Widget loginButtonWidget() {
  return Container(
    margin: EdgeInsets.only(left: 32.0, top: 32.0),
    child: Row(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      spreadRadius: 0,
                      offset: Offset(0.0, 32.0)),
                ],
                borderRadius: new BorderRadius.circular(36.0),
                gradient: LinearGradient(begin: FractionalOffset.centerLeft,
// Add one stop for each color. Stops should increase from 0 to 1
                    stops: [
                      0.2,
                      1
                    ], colors: [
                  Color(0xff000000),
                  Color(0xff434343),
                ])),
            child: Text(
              'LOGIN',
              style: TextStyle(
                  color: Color(0xffF1EA94),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ],
    ),
  );
}

TextStyle hintAndValueStyle = TextStyle(
    color: Color(0xff353535),
    fontWeight: FontWeight.bold,
    fontSize: 14.0,
    fontFamily: 'Montserrat');
