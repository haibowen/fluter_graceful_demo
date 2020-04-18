import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PageShowSelf());
}

class PageShowSelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            leading: InkWell(
              child: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.4),
                end: FractionalOffset(0.9, 0.7),
                stops: [0.1, 0.9],
                colors: [Colors.blue, Colors.deepPurpleAccent]),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
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
                margin: EdgeInsets.only(top: 30, left: 50),
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
                margin: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'just do it anyway',
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 30.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: FractionalOffset(0.0, 0.4),
                      end: FractionalOffset(0.9, 0.7),
                      stops: [0.1, 0.9],
                      colors: [Colors.purpleAccent, Colors.deepPurple]),
                ),
                margin: EdgeInsets.only(top: 20, left: 20, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: FractionalOffset(0.0, 0.4),
                      end: FractionalOffset(0.9, 0.7),
                      stops: [0.1, 0.9],
                      colors: [Colors.deepPurpleAccent, Colors.purpleAccent]),
                ),
                margin: EdgeInsets.only(top: 20, left: 40, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40, left: 90, right: 90),
                  height: 50,
                  width: 60,
                  //color: Colors.purple,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: FractionalOffset(0.0, 0.4),
                        end: FractionalOffset(0.9, 0.7),
                        stops: [0.1, 0.9],
                        colors: [Colors.purple, Colors.blueAccent]),
                  ),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: Center(
                        child: Text('LOGIN'),
                      ),
                    ),
                    onTap: () {
                      print('点击了');
                    },
                  )),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Do you have an account ?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 18.0),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                          fontSize: 14.0),
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
