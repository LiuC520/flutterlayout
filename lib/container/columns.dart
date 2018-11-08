import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart' as v;

/**
 * columns 设置一个单位矩阵
 * compose  复合矩阵
            先向右移动30，
            再向左缩放-1，也就是水平翻转
            然后向上缩放-1，也就是垂直翻转
 * identity 恢复状态，成单位矩阵
 * copy 复制一个矩阵
 * inverted 取反
 */

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
            decoration: new BoxDecoration(
              color: Colors.red,
              // border: CircleBorder(),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.all(Radius.circular(4)),
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    decoration: new BoxDecoration(
                        color: Colors.teal,
                        gradient: LinearGradient(
                            colors: <Color>[Colors.yellow, Colors.green])),
                    width: 30,
                    height: 30,
                    transform: Matrix4.columns(
                        v.Vector4(1, 0, 0, 0),
                        v.Vector4(0, 1, 0, 0),
                        v.Vector4(0, 0, 1, 0),
                        v.Vector4(0, 0, 0, 1))
                    //  Matrix4.compose(Vector3, rotation, scale)
                    // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text('''
            columns： 设置一个单位矩阵
              Matrix4.columns(
                v.Vector4(1, 0, 0, 0),
                v.Vector4(0, 1, 0, 0),
                v.Vector4(0, 0, 1, 0),
                v.Vector4(0, 0, 0, 1) )
                  '''),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      Divider(
        height: 4,
      ),
      Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: new BoxDecoration(
              color: Colors.red,
              // border: CircleBorder(),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.all(Radius.circular(4)),
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    decoration: new BoxDecoration(
                        color: Colors.teal,
                        gradient: LinearGradient(
                            colors: <Color>[Colors.yellow, Colors.green])),
                    width: 30,
                    height: 30,
                    transform: Matrix4.compose(v.Vector3(30, 0, 0),
                        v.Quaternion(0, 0, 0, 0), v.Vector3(-1, -1, 1))
                    // Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -30, 0, 0, 1),
                    // Matrix4.translationValues(-30, 0, 0),
                    //  Matrix4.compose(Vector3, rotation, scale)
                    // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('''
            compose：  先向右移动30，
            再向左缩放-1，也就是水平翻转
            然后向上缩放-1，也就是垂直翻转

              Matrix4.compose(
                v.Vector3(30, 0, 0),
                v.Quaternion(0, 0, 0, 0),
                v.Vector3(-1, -1, 1))
                  '''),
          ),
        ],
      ),
      Divider(
        height: 4,
      ),
      Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: new BoxDecoration(
              color: Colors.red,
              // border: CircleBorder(),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.all(Radius.circular(4)),
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.teal,
                      gradient: LinearGradient(
                          colors: <Color>[Colors.yellow, Colors.green])),
                  width: 30,
                  height: 30,
                  transform: Matrix4.copy(
                      Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)),
                  // Matrix4.translationValues(30, 0, 0),
                  // Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0,
                  // 0, 1), // Matrix4.diagonal3Values(1, 1, 1),
                  //  Matrix4.compose(Vector3, rotation, scale)
                  // Matrix4.columns(arg0, arg1, arg2, arg3),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('''
            复制一个矩阵
            Matrix4.copy(
              Matrix4(
              1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
              ))
                  '''),
          ),
        ],
      ),
      Divider(
        height: 4,
      ),
      Row(children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          width: 80,
          height: 80,
          decoration: new BoxDecoration(
            color: Colors.red,
            // border: CircleBorder(),
            shape: BoxShape.rectangle,
            borderRadius: new BorderRadius.all(Radius.circular(4)),
          ),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  decoration: new BoxDecoration(
                      color: Colors.teal,
                      gradient: LinearGradient(
                          colors: <Color>[Colors.yellow, Colors.green])),
                  width: 30,
                  height: 30,
                  transform: Matrix4.identity()
                  // Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 30, 0, 1),
                  // Matrix4.translationValues(0, 30, 0),
                  // Matrix4(2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0,
                  // 1), //Matrix4.diagonal3Values(2, 1, 1),
                  //  Matrix4.compose(Vector3, rotation, scale)
                  // Matrix4.columns(arg0, arg1, arg2, arg3),
                  ),
            ],
          ),
        ),
        Container(
          child: Text('''
          恢复状态，成单位矩阵
              Matrix4.identity()
                                  '''),
        ),
      ]),
      Divider(
        height: 4,
      ),
      Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: new BoxDecoration(
              color: Colors.red,
              // border: CircleBorder(),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.all(Radius.circular(4)),
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.teal,
                      gradient: LinearGradient(
                          colors: <Color>[Colors.yellow, Colors.green])),
                  width: 30,
                  height: 30,
                  transform:
                      // Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, -30, 0, 1),
                      Matrix4.inverted(Matrix4(
                          1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 30, 0, 1)),
                  // Matrix4(1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0,
                  // 0, 1), //Matrix4.translationValues(1, 2, 1),
                  //  Matrix4.compose(Vector3, rotation, scale)
                  // Matrix4.columns(arg0, arg1, arg2, arg3),
                ),
              ],
            ),
          ),
          Container(
            child: Text('''
构造一个相反的矩阵,原来是y轴向下平移30，
            现在是向上平移30
            Matrix4.inverted(Matrix4(
    1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 30, 0, 1))
            再举个例子，只改变第一个参数是
            所有坐标x轴放大2倍，
            取反后是缩小一倍
    Matrix4.inverted(Matrix4(
    2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)),
                    '''),
          ),
        ],
      )
    ]));
  }
}
