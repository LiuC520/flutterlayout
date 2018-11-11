import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white10,
          child: Row(
            children: <Widget>[Text('标题1'), Text('标题2')],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restitch it',
            onPressed: null,
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ), // 左侧返回按钮，可以有按钮，可以有文字
        flexibleSpace: FlexibleSpaceBar(
          title: Text('flexibleSpace'),
          background: Icon(Icons
              .add), //背景，一般是一个图片，在title后面，[Image.fit] set to [BoxFit.cover].
          centerTitle: true,
          collapseMode: CollapseMode
              .pin, // 背景 固定到位，直到达到最小范围。 默认是CollapseMode.parallax(将以视差方式滚动。)，还有一个是none，滚动没有效果
        ),
        backgroundColor: Colors.red, //导航栏和状态栏的的颜色
        elevation: 10, //阴影的高度
        bottom: PreferredSize(
            child: Text('bottom'),
            preferredSize: Size(30, 30)), // 在appbar下面显示的东西
        brightness: Brightness.light, //控制状态栏的颜色，lignt 文字是灰色的，dark是白色的
        iconTheme: IconThemeData(
            color: Colors.yellow,
            opacity: 0.5,
            size: 30), //icon的主题样式,默认的颜色是黑色的，不透明为1，size是24
        textTheme: TextTheme(), //这个主题的参数比较多,flutter定义了13种不同的字体样式
        centerTitle: true, //标题是否居中，默认为false
        toolbarOpacity: 0.5, //整个导航栏的不透明度
        bottomOpacity: 0.8, //bottom的不透明度
        titleSpacing: 10, //标题两边的空白区域,
      ),
      body: Text("我是刘成"),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.adb), title: Text("1")),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("2"))
        ],
      ),
    );
  }
}
