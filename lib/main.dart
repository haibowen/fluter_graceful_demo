import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutteruidemo/home_page.dart';
import 'package:flutteruidemo/user_show.dart';
import 'package:flutteruidemo/widget_show.dart';

List<dynamic> typePage = ['login', 'center', 'user', 'test', 'show'];

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

        ///这是设置状态栏的图标和字体的颜色
        ///Brightness.light  一般都是显示为白色
        ///Brightness.dark 一般都是显示为黑色
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageShowPage();
  }
}

class PageShowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageShowPageState();
  }
}

class PageShowPageState extends State<PageShowPage> {
  int _currentIndex = 0;

  final PageController pageController = new PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          onPageChanged: (index){

            setState(() {
              _currentIndex=index;
            });
          },
          controller: pageController,
          //physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomePage(),
            WidgetShow(),
            UserWidgetShow(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            pageController.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera), title: Text('Widget')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('User')),
          ],
        ),
      ),
    );
  }
}
