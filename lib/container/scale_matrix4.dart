import 'package:flutter/material.dart';
import 'dart:ui';

/**
 * 这是scale缩放用矩阵来表示
 */
class Scale1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: new Column(children: <Widget>[
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
                      transform: Matrix4(1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0,
                          0, 0, 1), // Matrix4.diagonal3Values(1, -1, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('''
                Matrix4.diagonal3Values(1, -1, 1)
                    1   0   0   0
                    0  -1   0   0
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
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                      transform: Matrix4.diagonal3Values(-1, 1, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('''
                Matrix4.diagonal3Values(-1, 1, 1)
                    -1   0   0   0
                     0   1   0   0
                     0   0   1   0
                     0   0   0   1
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
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                      transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0,
                          0, 0, 1), // Matrix4.diagonal3Values(1, 1, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('''
                  Matrix4.diagonal3Values(1, 1, 1)
                      1   0   0   0
                      0   1   0   0
                      0   0   1   0
                      0   0   0   1
                    '''),
              ),
            ],
          ),
          Divider(
            height: 4,
          ),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                    transform: Matrix4(2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0,
                        0, 1), //Matrix4.diagonal3Values(2, 1, 1),
                    //  Matrix4.compose(Vector3, rotation, scale)
                    // Matrix4.columns(arg0, arg1, arg2, arg3),
                  ),
                ],
              ),
            ),
            Container(
              child: Text('''
                  Matrix4.diagonal3Values(2, 1, 1)
                      2   0   0   0
                      0   1   0   0
                      0   0   1   0
                      0   0   0   1
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
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                      transform: Matrix4(1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0,
                          0, 0, 1), //Matrix4.diagonal3Values(1, 2, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('''
                  Matrix4.diagonal3Values(1, 2, 1)
                      1   0   0   0
                      0   2   0   0
                      0   0   1   0
                      0   0   0   1
                    '''),
              ),
            ],
          )
        ]));
  }
}
