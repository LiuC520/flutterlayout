import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart' as v;

/**
 * outer 两个4维向量的乘积合并
 * skew：扭曲
 * skewX：沿着x轴扭曲
 * skewY：沿着y轴扭曲
 * zero: 全是0的4*4的张量
 * fromList： 将一个16位的一维数组转换成4*4的矩阵
 */

class Outer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Matrix4-outer'),
        ),
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
                        transform: Matrix4.outer(
                            v.Vector4(1, 1, 1, 1), v.Vector4(1, 1, 1, 1))
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
              Matrix4.outer(
      v.Vector4(1, 1, 1, 1), v.Vector4(1, 1, 1, 1))
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
                        transform: Matrix4.skew(pi / 4, 0)
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
            skew：扭曲
            Matrix4.skew(pi / 4, 0)
            第一个参数是沿着x轴扭曲
            第二个参数是沿着y轴扭曲
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
                      transform: Matrix4.skewX(-pi / 6),
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
            skewX: 沿着x轴扭曲
            Matrix4.skewX(-pi / 6)
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
                      transform: Matrix4.skewY(pi / 6)
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
          skewY: 沿着y轴扭曲
          Matrix4.skewY(pi / 6)
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
                          Matrix4.zero(),
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
            zero: 全是0的4*4的张量
              Matrix4.zero(),
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
                        transform:
                            // Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, -30, 0, 1),
                            Matrix4.fromList([
                          1,
                          0,
                          0,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          0,
                          1,
                          0,
                          0,
                          0,
                          0,
                          1
                        ])
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
            fromList:
            将一个16位的一维数组
            转换成4*4的矩阵
            Matrix4.fromList(
        [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1])
                    '''),
              ),
            ],
          )
        ]));
  }
}
