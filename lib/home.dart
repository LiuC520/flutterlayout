import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

class Home extends StatelessWidget {
  var routerNmaes = [
    "平移",
    "缩放",
    "旋转",
  ];

  @override
  Widget build(BuildContext context) {
    Widget listView = new GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            crossAxisSpacing: 9.0,
            mainAxisSpacing: 9.0),
        itemCount: routerNmaes.length,
        itemBuilder: (context, i) => new GestureDetector(
              child: Text(routerNmaes[i]),
              onTap: () => Navigator.pushNamed(context, "/Transform1"),
            ));
    return Scaffold(
        body: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Expanded(
          child: listView,
        ),
      ],
    ));
  }
}
