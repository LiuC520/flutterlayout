import 'package:flutter/material.dart';

class Theme1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Text("我是刘成")],
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
