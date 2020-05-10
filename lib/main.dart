import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutteruidemo/customer_error_page.dart';
import 'package:flutteruidemo/home_page.dart';
import 'package:flutteruidemo/user_show.dart';
import 'package:flutteruidemo/widget_show.dart';

import 'exception_count/exception_count.dart';

List<dynamic> typePage = ['login', 'animation', 'navigation', 'test', 'show'];

///页面异常统计 start
int exceptionCount = 0;

Future<Null> _reportError(dynamic error, dynamic stackTrace) async {
  exceptionCount++; //异常的累加次数
  print("异常的次数为为为$exceptionCount");
  print("错误信息为" + error);

  //接入三方的异常上报 需要开发插件调用原生
  //FlutterCrashPlugin.postException(error, stackTrace);
}

Future<Null> main() async {
  FlutterError.onError = (FlutterErrorDetails details) async {
    Zone.current.handleUncaughtError(details.exception, details.stack);
  };
  runZoned<Future<Null>>(() async {
    //Flutter app一键置灰的方法
//    runApp(ColorFiltered(
//      colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
//      child: MyApp(),
//    ));

    runApp(MyApp());
    //沉浸式状态栏
    if (Platform.isAndroid) {
      SystemUiOverlayStyle style = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,

          ///这是设置状态栏的图标和字体的颜色
          ///Brightness.light  一般都是显示为白色
          ///Brightness.dark 一般都是显示为黑色
          statusBarIconBrightness: Brightness.light);
      SystemChrome.setSystemUIOverlayStyle(style);
    }
  }, onError: (error, stackTrace) async {
    await _reportError(error, stackTrace);
    print("异常的次数为$exceptionCount");
    print("错误信息为wwww" + error);
  });
}

///页面异常统计 end

//void main() {
//  runApp(MyApp());
//
//}

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

    //统一错误页面处理
    ErrorWidget.builder = (FlutterErrorDetails error) {
      return CustomerErrorPage(error.exceptionAsString());
    };
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          physics: BouncingScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
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
