import 'package:flutter/material.dart';
import 'dart:ui';

/**
 * scale1
 */
class Scale1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: new Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                width: 80,
                height: 80,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                      transform: Matrix4.diagonal3Values(1, -1, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                width: 80,
                height: 80,
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
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
                      transform: Matrix4.diagonal3Values(1, 1, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                      transform: Matrix4.diagonal3Values(2, 1, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                      transform: Matrix4.diagonal3Values(1, 2, 1),
                      //  Matrix4.compose(Vector3, rotation, scale)
                      // Matrix4.columns(arg0, arg1, arg2, arg3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }
}
