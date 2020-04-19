import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerErrorPage extends StatelessWidget {
  final String errorDetails;
  CustomerErrorPage(this.errorDetails);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        )),
        body: Center(
          child: Container(
            child:Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  CupertinoActivityIndicator(),
                  Padding(
                    child:Text('抱歉，现在出现了一些问题'),
                    padding: EdgeInsets.only(left: 10),
                  ),

                ],),
                Padding(
                  child:Text("------日志信息如下--------",style: TextStyle(fontSize: 18,color: Colors.red),),
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                ),

                Text(errorDetails,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )

          ),
        ),
      ),
    );
  }
}
