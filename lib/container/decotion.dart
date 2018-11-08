import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

class Container1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: new Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  // color: Colors.teal,
                  width: 30,
                  height: 30,

                  decoration: new BoxDecoration(
                      color: Colors.yellow, shape: BoxShape.circle),
                  // foregroundDecoration: Decoration

                  // constraints: BoxConstraints
                  // transform: Matrix4,
                ),
                // new Material(
                //   color: Colors.blueAccent,
                //   shape: new BeveledRectangleBorder(
                //     //斜角矩形边框
                //     side: new BorderSide(
                //       width: 1.0,
                //       color: Colors.blueAccent,
                //       style: BorderStyle.none,
                //     ),
                //     borderRadius: new BorderRadius.circular(30.0),
                //   ),
                //   child: new Container(
                //     padding: EdgeInsets.all(20.0),
                //     child: new Text('斜角矩形边框'),
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  // color: Colors.teal,
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.red,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.all(Radius.circular(4)),
                  ),
                  // shape:
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  // color: Colors.teal,
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius:
                        new BorderRadius.all(Radius.circular(4)), // 四个圆角都是半径为4
                  ),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.circular(4), // 四个圆角都是半径为4
                  ),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.horizontal(
                        left: Radius.circular(10)), //左边的两个角的半径为10
                  ),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.horizontal(
                        left: Radius.circular(10),
                        right: Radius.circular(4)), //左边的两个角半径为10，右侧两个角半径为4
                  ),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.vertical(
                        top: Radius.circular(6)), //上边两个角半径为6
                  ),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.vertical(
                        top: Radius.circular(6),
                        bottom: Radius.circular(14)), //上边两个角半径为6,下面的两个角的半径为10
                  ),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                    color: Colors.teal,
                    // border: CircleBorder(),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(6),
                        bottomRight:
                            Radius.circular(20)), //坐上角半径为10，右上角4，左下角为6，右下角为20
                  ),
                  // shape:
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment(0, 0),
                  // color: Colors.teal,
                  width: 50,
                  height: 50,

                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green,
                            offset: Offset(4, 4),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ]),
                  // shape:
                ),
                Container(
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green,
                            offset: Offset(4, 8),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ]),
                ),
                Container(
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green,
                            offset: Offset(4, -8),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ]),
                ),
                Container(
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green,
                            offset: Offset(-4, -8),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ]),
                ),
                Container(
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green,
                            offset: Offset(-4, 8),
                            blurRadius: 0,
                            spreadRadius: 0)
                      ]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green, //阴影的颜色
                            offset: Offset(4,
                                4), //偏移量，Offset第一个参数为x轴的偏移量，正值向右，负值向左，第二个参数是y轴的偏移量，正值向下，负值向上
                            blurRadius:
                                4, //这个是高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰,值只能为正数
                            spreadRadius: 0) //这个扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                      ]),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green, //阴影的颜色
                            offset: Offset(4,
                                4), //偏移量，Offset第一个参数为x轴的偏移量，正值向右，负值向左，第二个参数是y轴的偏移量，正值向下，负值向上
                            blurRadius:
                                10, //这个是高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰,值只能为正数
                            spreadRadius: 0) //这个扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                      ]),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green, //阴影的颜色
                            offset: Offset(4,
                                4), //偏移量，Offset第一个参数为x轴的偏移量，正值向右，负值向左，第二个参数是y轴的偏移量，正值向下，负值向上
                            blurRadius:
                                20, //这个是高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰,值只能为正数
                            spreadRadius: 0) //这个扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                      ]),
                  // shape:
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green, //阴影的颜色
                            offset: Offset(4,
                                4), //偏移量，Offset第一个参数为x轴的偏移量，正值向右，负值向左，第二个参数是y轴的偏移量，正值向下，负值向上
                            blurRadius:
                                0, //这个是高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰,值只能为正数
                            spreadRadius: 0) //这个扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                      ]),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green, //阴影的颜色
                            offset: Offset(4,
                                4), //偏移量，Offset第一个参数为x轴的偏移量，正值向右，负值向左，第二个参数是y轴的偏移量，正值向下，负值向上
                            blurRadius:
                                0, //这个是高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰,值只能为正数
                            spreadRadius: 4) //这个扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                      ]),
                  // shape:
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment(0, 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      // border: CircleBorder(),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.circular(4)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.green, //阴影的颜色
                            offset: Offset(4,
                                4), //偏移量，Offset第一个参数为x轴的偏移量，正值向右，负值向左，第二个参数是y轴的偏移量，正值向下，负值向上
                            blurRadius:
                                0, //这个是高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰,值只能为正数
                            spreadRadius: 8) //这个扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                      ]),
                  // shape:
                ),
              ],
            )
          ],
        ));
  }
}
