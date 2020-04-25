import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageLoginOffset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.blueAccent,Colors.cyan, ])),
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 60),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        //头像半径
                        radius: 60,
                        //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                        backgroundImage: AssetImage(
                          'images/logo.jpg',
                        ),
                      ),
                    ],
                  ),
                )),


            Positioned(
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.deepPurpleAccent,
                      Colors.blue,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.only(top: 200, left: 1),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width-80,
              ),
            ),

            Positioned(
              top: 220,
              left: 25,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.deepPurpleAccent,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width-80,
              ),
            ),
            Positioned(
              top: 240,
              left: 40,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.deepPurpleAccent,
                      Colors.blue,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width-80,
              ),
            ),
            Positioned(
              top: 260,
              left: 55,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.deepPurpleAccent,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width-70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Please Input Your Account',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: Padding(
                            child: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.only(top: 20),
                          ),
                          contentPadding: EdgeInsets.only(left: 20, top: 25),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: Padding(
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.only(top: 20),
                          ),
                          contentPadding: EdgeInsets.only(left: 20, top: 25),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: RaisedButton.icon(
                        color: Colors.deepPurpleAccent,
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        label: Text(
                          'Go',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      '非 material主题下的组件，设置的文字默认会有黄色的下划线',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: <Widget>[
                  Text('Do you have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Montserrat',
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                          fontSize: 14.0),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
