import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Row1 extends StatelessWidget {
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
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            // Text(
            //   '我',
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text('刘成'),
            // Text(
            //   'AaA',
            //   style: TextStyle(fontSize: 20),
            // ),
            Container(
              color: Colors.red,
              height: 30,
              width: 30,
            ),
            Container(
              color: Colors.blue,
              height: 30,
              width: 30,
            ),
            Container(
              color: Colors.yellow,
              height: 30,
              width: 30,
            ),
          ],
        ),
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
