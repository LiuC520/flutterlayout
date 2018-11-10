library routers;

import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_layout/column/column.dart';
import 'package:flutter_layout/row/row.dart';
import 'package:flutter_layout/center/center.dart';
import 'package:flutter_layout/container/container.dart';
import 'package:flutter_layout/container/transform.dart';
import 'package:flutter_layout/container/scale1.dart';
import 'package:flutter_layout/container/scale_matrix4.dart';
import 'package:flutter_layout/container/rotation.dart';
import 'package:flutter_layout/container/outer.dart';
import 'package:flutter_layout/container/decotion.dart';
import 'package:flutter_layout/container/constraints.dart';
import 'package:flutter_layout/material/about.dart';
import 'package:flutter_layout/material/animated_icons.dart';

// final routerNames = ['row--水平布局', 'transform', 'scale', 'rotation'];

// final routes = {
//   '/row': (BuildContext context) => new Row1(),
//   '/transform': (BuildContext context) => new Transform1(),
//   '/scale': (BuildContext context) => new Scale1(),
//   '/rotation': (BuildContext context) => new Rotation1(),
//   '/': (BuildContext context) => new Home(),
// };

/**
 * 两种路由的写法，上面是直接写到了一起，
 * 下面用了循环的方式生成了路由
 */
/**
 * 路由的名字
 */
List<String> routerNames = [
  'column',
  'row',
  'center',
  'container',
  'transform',
  'scale',
  'scale1',
  'rotation',
  'outer',
  'decoration',
  'constraints',
  'about',
  'animatedicons',
];
/**
 * 路由中文
 */
List<String> routerNamesCN = [
  '垂直布局',
  '水平布局',
  '居中布局',
  '容器',
  '图像变换--平移',
  '图像变换--缩放',
  '图像变换--缩放--矩阵变换',
  '图像变换--旋转',
  '矩阵变换--扭曲等',
  '装饰样式',
  '约束',
  'About',
  '动画icon'
];
/**
 * 路由的widget
 */
var widgets = [
  new Column1(),
  new Row1(),
  new Center1(),
  new Container1(),
  new Transform1(),
  new Scale1(),
  new Scale2(),
  new Rotation1(),
  new Outer1(),
  new Decaration1(),
  new Constraints1(),
  new About(),
  new AnimatedIcons1(),
];

/**
 * 生成路由map
 */
Map<String, WidgetBuilder> getRouters() {
  Map<String, WidgetBuilder> maps = new Map();
  maps.putIfAbsent('/', () => (BuildContext context) => new Home());
  for (var i = 0; i < routerNames.length; i++) {
    maps.putIfAbsent(
        '/${routerNames[i]}', () => (BuildContext context) => widgets[i]);
  }
  return maps;
}
