import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruidemo/animation/animation_hero_original.dart';

class AnimationHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Center(
      child: Container(
        color: Colors.purpleAccent.withOpacity(0.5),
        alignment: Alignment.center,
        child: InkWell(
          child: Hero(
            tag: 'hyplo',
            child: CircleAvatar(
              //头像半径
              radius: 60,
              //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
              backgroundImage: AssetImage(
                'images/test.jpg',
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(pageBuilder:
                (BuildContext context, Animation animation,
                    Animation secondAnimation) {
              return FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text('原图'),
                  ),
                  body: AnimationHerOriginal(),
                ),
              );
            }));
          },
        ),
      ),
    ));
  }
}
