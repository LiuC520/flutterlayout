import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Center1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: new Container(
        width: 375,
        height: 200,
        color: Colors.teal,
        // child: new Column(children: <Widget>[//看高度因子的效果
        child: new Row(children: <Widget>[
          //看水平的宽度因子
          new Center(
            widthFactor: 2,
            heightFactor: 2,
            child: Container(
              color: Colors.red,
              height: 60,
              width: 60,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 60,
            width: 30,
          ),
        ]),
      ),
    );
  }
}

// Visibility(
//   child: Text("Widget 2"),
//   visible: false,
// ),
// Spacer(),
// Placeholder(),
