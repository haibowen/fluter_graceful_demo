import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PageLoginCard());
}

class PageLoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        appBar: AppBar(
//          leading: InkWell(
//            child: Icon(Icons.arrow_back),
//            onTap: () {
//              Navigator.pop(context);
//            },
//          ),
//          backgroundColor: Colors.deepPurpleAccent,
//        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.4),
                end: FractionalOffset(0.9, 0.7),
                stops: [0.1, 0.9],
                colors: [Colors.blue, Colors.deepPurpleAccent]),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        //头像半径
                        radius: 60,
                        //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                        backgroundImage: AssetImage(
                          'images/logo.jpg',
                        ),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 32.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  'just do it anyway',
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 30.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 260,
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Card(
                      elevation: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: FractionalOffset(0.0, 0.4),
                              end: FractionalOffset(0.9, 0.7),
                              stops: [0.1, 0.9],
                              colors: [Colors.blue, Colors.deepPurpleAccent]),
                        ),
                        padding: EdgeInsets.only(top: 80),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0),
                                      borderSide: BorderSide.none),
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.remove_red_eye),
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0),
                                      borderSide: BorderSide.none),
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 210,
                    child: InkWell(
                      child: DecoratedBox(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 18.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: FractionalOffset(0.0, 0.4),
                              end: FractionalOffset(0.9, 0.7),
                              stops: [0.1, 0.9],
                              colors: [Colors.blue, Colors.deepPurple]),
                          shape: BoxShape.circle,
                        ),
                      ),
                      onTap: () {
                        print('点击了');
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: <Widget>[
                    Text('Do you have an account?',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Montserrat',
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline,
                            fontSize: 14.0),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
