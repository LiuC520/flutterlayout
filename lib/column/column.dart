import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Column1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("垂直布局"),
      ),
      body: new Container(
        width: 375,
        height: 200,
        color: Colors.teal,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          textDirection: TextDirection.ltr,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
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
            // WebviewScaffold(
            //   url: "https://www.baidu.com",
            // ),
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
