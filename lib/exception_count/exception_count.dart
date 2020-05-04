import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutteruidemo/main.dart';

//int exceptionCount = 0;
//
//Future<Null> _reportError(dynamic error, dynamic stackTrace) async {
//  exceptionCount++; //异常的累加次数
//
//  //接入三方的异常上报 需要开发插件调用原生
//  //FlutterCrashPlugin.postException(error, stackTrace);
//}
//
//
//Future<Null> main()async{
//  FlutterError.onError=(FlutterErrorDetails details)async{
//    Zone.current.handleUncaughtError(details.exception, details.stack);
//  };
//  runZoned<Future<Null>>(()async{
//    runApp(MyApp());
//
//  },onError: (error,stackTrace)async{
//    await _reportError(error, stackTrace);
//    print("异常的次数为$exceptionCount");
//  });
//}