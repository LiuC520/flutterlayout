import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'routers.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget listView = new ListView.separated(
        padding: const EdgeInsets.all(10.0),

        // gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 1,
        //     childAspectRatio: 1.0,
        //     crossAxisSpacing: 1.0,
        //     mainAxisSpacing: 1.0),
        itemCount: routerNames.length,
        itemBuilder: (context, i) => new GestureDetector(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: Colors.green[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(routerNames[i]),
                    Text(routerNamesCN[i]),
                  ],
                ),
              ),
              onTap: () => Navigator.pushNamed(context, "/" + routerNames[i]),
            ),
        separatorBuilder: (context, i) => Divider());
    return Scaffold(
        appBar: AppBar(
          title: Text("布局"),
        ),
        body: listView
        //     new Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     // new Expanded(5
        //     // child: listView,
        //     // ),
        //   ],
        // )
        );
  }
}
