import 'package:flutter/material.dart';

class Material1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("我是刘成"),
//         位置信息
// 如果要使用绝对定位，那么需要把内容包裹在 Positioned 容器里，而 Positioned 又需要包裹在 Stack 容器里。
          new Container(
            child: new Stack(
              children: [
                new Positioned(
                  child: new Container(
                    child: new Text("定位"),
                  ),
                  left: 24.0,
                  top: 24.0,
                ),
              ],
            ),
            width: 320.0,
            height: 240.0,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.adb), title: Text("1")),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("2"))
        ],
      ),
    );
  }
}
