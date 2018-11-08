import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart' as v;

/**
 * rotation旋转
 * rotationZ x->y 正向顺时针旋转，矩阵的1 cos(pi/6)， 2的值 sin(pi/6)， 5的值 -sin(pi/6)， 6的值 cos(pi/6)，
 * rotationX y->z 正向顺时针旋转，矩阵的6 cos(pi/6)， 7的值 sin(pi/6)， 10的值 -sin(pi/6)， 11的值 cos(pi/6)，
 * rotationY x->z 正向逆时针旋转，矩阵的1 cos(pi/6)， 3的值 -sin(pi/6)， 9的值 sin(pi/6)， 11的值 cos(pi/6)，
 */

class Rotation1 extends StatelessWidget {
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
                    transform: Matrix4.rotationY(0)
                    //  Matrix4.compose(Vector3, rotation, scale)
                    // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text('''
              1、 Matrix4.rotationY(0)
              2、 Matrix4(cos(0)，0, -sin(0), 0,
                0, 1, 0, 0, sin(0),
                0, cos(0), 0, 0, 0, 0, 1)
                    1   0   0   0
                    0   1   0   0
                    0   0   1   0
                    0   0   0   1
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
                  transform: Matrix4(cos(pi / 6), 0, -sin(pi / 6), 0, 0, 1, 0,
                      0, sin(pi / 6), 0, cos(pi / 6), 0, 0, 0, 0, 1),
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
              1、 Matrix4.rotationY(pi/6)
              2、 Matrix4(
                cos(pi/6)，0, -sin(pi/6), 0,
                0, 1, 0, 0, sin(pi/6),
                0, cos(pi/6), 0, 0, 0, 0, 1)

              cos(pi/6)     0  -sin(pi/6)       0
              0                   1         0               0
              sin(pi/6)      0    cos(pi/6)     0
              0                   0         0               1
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
                  transform: Matrix4(cos(pi / 4), 0, -sin(pi / 4), 0, 0, 1, 0,
                      0, sin(pi / 4), 0, cos(pi / 4), 0, 0, 0, 0, 1),
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
              1、 Matrix4.rotationY(pi/4)
              2、 Matrix4(
                cos(pi/4)，0, -sin(pi/4), 0,
                0, 1, 0, 0, sin(pi/4),
                0, cos(pi/4), 0, 0, 0, 0, 1)

              cos(pi/4)     0  -sin(pi/4)       0
              0                   1         0               0
              sin(pi/4)      0    cos(pi/4)     0
              0                   0         0               1
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
                  transform: Matrix4.rotationY(pi / 3)
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
              1、 Matrix4.rotationY(pi/3)
              cos(pi/3)     0  -sin(pi/3)       0
              0                   1         0               0
              sin(pi/3)      0    cos(pi/3)     0
              0                   0         0               1
                    '''),
        ),
      ]),
      // Divider(
      //   height: 4,
      // ),
      // Row(
      //   children: <Widget>[
      //     Container(
      //       width: 80,
      //       height: 80,
      //       margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      //       decoration: new BoxDecoration(
      //         color: Colors.red,
      //         // border: CircleBorder(),
      //         shape: BoxShape.rectangle,
      //         borderRadius: new BorderRadius.all(Radius.circular(4)),
      //       ),
      //       child: new Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: <Widget>[
      //           Container(
      //             decoration: new BoxDecoration(
      //                 color: Colors.teal,
      //                 gradient: LinearGradient(
      //                     colors: <Color>[Colors.yellow, Colors.green])),
      //             width: 30,
      //             height: 30,
      //             transform:
      //                 // Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, -30, 0, 1),
      //                 Matrix4.translation(v.Vector3.array([0, -30, 0])),
      //             // Matrix4(1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0,
      //             // 0, 1), //Matrix4.translationValues(1, 2, 1),
      //             //  Matrix4.compose(Vector3, rotation, scale)
      //             // Matrix4.columns(arg0, arg1, arg2, arg3),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       child: Text('''
      //          Matrix4.translationValues(0, -30, 0)
      // Matrix4.translation(v.Vector3(0, -30, 0))
      //                 1     0   0   0
      //                 0     1   0   0
      //                 0     0   1   0
      //                 0  -30   0   1
      //               '''),
      //     ),
      //   ],
      // )
    ]));
  }
}
