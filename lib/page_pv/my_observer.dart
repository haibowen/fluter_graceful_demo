import 'package:flutter/material.dart';

int totalPage=0;

class MyObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    // TODO: implement didPush
    super.didPush(route, previousRoute);

    totalPage++;
    print("页面进入的次数$totalPage");
  }
}
