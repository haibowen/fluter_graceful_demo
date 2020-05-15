

import 'package:flutter/material.dart';
import 'package:fluttergracefulwidget/button/gf_button.dart';
import 'package:fluttergracefulwidget/tag/gf_tag.dart';

import 'main.dart';


class WidgetShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child:Scaffold(
        appBar: AppBar(
          title: Text('widget'),
        ),
        body: Column(
          children: <Widget>[
            GFButton(
              text: "按钮",
            ),
            GFTag(
              content: '标志',
            ),
          ],
        )
      ) ,
    );

  }
}
