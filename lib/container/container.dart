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
        body: new Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                alignment: Alignment(0, 0),
                width: 200,
                height: 200,
                constraints: BoxConstraints(
                    minHeight: 50, minWidth: 50, maxWidth: 100, maxHeight: 100),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  // border: CircleBorder(),
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.all(Radius.circular(4)),
                ),
                child: new Row(
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
                  ],
                ),
                // shape:
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                alignment: Alignment(0, 0),
                width: 200,
                height: 200,
                constraints: BoxConstraints(
                    minHeight: 50, minWidth: 50, maxWidth: 300, maxHeight: 300),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  // border: CircleBorder(),
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.all(Radius.circular(4)),
                ),
                child: new Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(0, 0),
                      // color: Colors.teal,
                      width: 200,
                      height: 200,

                      decoration: new BoxDecoration(
                          color: Colors.yellow, shape: BoxShape.circle),
                      // foregroundDecoration: Decoration

                      // constraints: BoxConstraints
                      // transform: Matrix4(),
                    ),
                    // Container(
                    //   margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    //   alignment: Alignment(0, 0),
                    //   // color: Colors.teal,
                    //   width: 30,
                    //   height: 30,

                    //   decoration: new BoxDecoration(
                    //       color: Colors.yellow, shape: BoxShape.circle),
                    //   // foregroundDecoration: Decoration

                    //   // constraints: BoxConstraints
                    //   // transform: Matrix4,
                    // ),
                  ],
                ),
                // shape:
              ),
            ],
          ),
        ]));
  }
}
