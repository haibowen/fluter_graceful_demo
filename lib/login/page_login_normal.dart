import 'package:flutter/material.dart';

class PageLoginNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'images/gifhome_back.gif',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.purpleAccent.withOpacity(0.7),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: CircleAvatar(
                      //头像半径
                      radius: 60,
                      //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                      backgroundImage: AssetImage(
                        'images/logo.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: FractionalOffset(0.0, 0.4),
                            end: FractionalOffset(0.9, 0.7),
                            stops: [0.1, 0.9],
                            colors: [Colors.cyan, Colors.cyanAccent]),
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
                                fontFamily: 'Montserrat',color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: FractionalOffset(0.0, 0.4),
                            end: FractionalOffset(0.9, 0.7),
                            stops: [0.1, 0.9],
                            colors: [Colors.cyan, Colors.cyanAccent]),
                      ),
                      margin: EdgeInsets.only(top: 20, left: 20, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: 'PassWord',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(colors: [
                            Colors.cyanAccent,
                            Colors.cyan,
                          ]),
                        ),
                        child: InkWell(
                          child: Text('GO',style: TextStyle(color: Colors.white),),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 80,left: 20),
                      child: Container(

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
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
