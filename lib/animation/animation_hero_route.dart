import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruidemo/animation/animation_hero_show.dart';
import 'package:flutteruidemo/home/home_show.dart';
import 'package:flutteruidemo/route/customer_router.dart';

class AnimationHeroRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: AnimationHeroShow(),
      // ignore: missing_return
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/login':
            return CustomerRouter(
                builder: (_) => AnimationHeroShow(), settings: settings);

          case '/home':
            return CustomerRouter(
                builder: (_) => HomeShow(), settings: settings);
        }
      },
    );
  }
}
