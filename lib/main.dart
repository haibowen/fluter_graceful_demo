import 'package:flutter/material.dart';
import 'package:flutteruidemo/home_page.dart';

import 'login/page_login_card.dart';
import 'login/page_login_self.dart';

List<dynamic> typePage = ['login', 'center', 'user', 'test', 'show'];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){


          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text('Widget')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('User')),
          ],
        ),
      ),
    );
  }
}
