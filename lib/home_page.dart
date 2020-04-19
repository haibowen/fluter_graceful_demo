import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruidemo/customer_error_page.dart';
import 'package:flutteruidemo/login/page_login_offset.dart';

import 'login/page_login_card.dart';
import 'login/page_login_self.dart';
import 'main.dart';

//展示的页面
List<Widget> pageShowRoute = [
  PageShowSelf(),
  PageLoginCard(),
];
Map<String, List<Widget>> mapShowWidget = {
  'login': [PageShowSelf(), PageLoginCard(),PageLoginOffset()]
};
//层叠的背景图片数组
List<dynamic> backgroundImageList = [
  'images/unnamed.jpg',
  'images/test.jpg',
  'images/show_something.jpg',
  'images/login.jpg',
  'images/center.jpg',
  'images/app_logo.jpg'
];
//层叠显示的icon
List<IconData> iconShowList = [
  Icons.camera,
  Icons.filter,
  Icons.photo_library,
  Icons.photo,
  Icons.fiber_new,
  Icons.book
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.deepPurpleAccent,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Graceful Demo'),
            background: new Image.asset(
              "images/show_something.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 2.0,
            crossAxisSpacing: 10.0,
          ),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Card(child: showItemType(context, index));
          }, childCount: 5),
        ),
      ],
    );
  }

  //层叠的显示效果
  Widget showItemType(context, index) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            backgroundImageList[index],
            fit: BoxFit.fill,
          ),
        ),
        Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.deepPurpleAccent.withOpacity(0.5),
                    Colors.purple.withOpacity(0.5)
                  ],
                )
//                            gradient: RadialGradient(
//                              //背景径向渐变
//                                colors: [Colors.purple, Colors.deepPurpleAccent],
//                                center: Alignment.center,
//                                radius: .78),
                ),
            alignment: Alignment.center,
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    iconShowList[index],
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    typePage[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              onTap: () {
                showBottomMenu(context, typePage[index]);
              },
            )),
      ],
    );
  }

  //底部弹窗显示
  void showBottomMenu(context, typeName) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Material(
              //color: Colors.deepPurpleAccent.withOpacity(0.5),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepPurpleAccent,
                          Colors.blue[300]
                        ]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              "images/app_logo.jpg",
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            child: Text('选择要显示的类别'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.deepPurpleAccent,
                      Colors.blue[300]
                    ])),
                    child: ListView.builder(
                      itemCount: typePage.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.sentiment_neutral),
                          title: Text(typeName + "$index"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        mapShowWidget[typeName][index]));
                          },
                        );
                      },
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 20, top: 20),
                    ),
                  )),
                  Container(
                      alignment: Alignment.center,
                      width: 600,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepPurpleAccent,
                          Colors.blue[300]
                        ]),
                      ),
                      child: InkWell(
                        child: Text(
                          'Flutter GraceFul Demo',
                          style: TextStyle(
                              fontSize: 22,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return showAlterDialog();
                              });
                        },
                      ))
                ],
              ),
            ));
  }

  //show Dialog
  Widget showAlterDialog() {
    return AlertDialog(
        title: Text('flutter学习记录'),
        content: Container(
          alignment: Alignment.centerLeft,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '项目地址:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'https://github.com/haibowen/fluter_graceful_demo',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ));
  }


}
