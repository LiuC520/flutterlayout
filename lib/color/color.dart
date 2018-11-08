import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

class Colors1 extends StatelessWidget {
  var colors = [
    Colors.red[50],
    Colors.red[100],
    Colors.red[200],
    Colors.red[300],
    Colors.red[400],
    Colors.red[500],
    Colors.red[600],
    Colors.red[700],
    Colors.red[800],
    Colors.red[900],
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.blueGrey,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.deepPurpleAccent,
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.orangeAccent,
    Colors.deepOrangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    Widget listView = new GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 9,
          childAspectRatio: 1.0,
          crossAxisSpacing: 9.0,
          mainAxisSpacing: 9.0),
      itemCount: colors.length,
      itemBuilder: (context, i) => new Container(
            color: colors[i],
          ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: listView,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 100,
              color: Color.fromARGB(100, 10, 100, 100),
            ),
            Container(
              height: 100,
              color: Color.fromRGBO(100, 10, 10, 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Color.alphaBlend(Color.fromRGBO(10, 10, 255, 0.1),
                      Color.fromRGBO(100, 10, 255, 0.5)),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.alphaBlend(Colors.red, Colors.yellow),
                )
              ],
            )
          ],
        )

        // new Container(
        //   alignment: Alignment(0, 0),

        //   color:
        //       // Color.fromARGB(15, 50, 255, 0),
        //       Colors.teal,
        //   width: 200,
        //   height: 200,

        //   // decoration:Decoration.lerp(a, b, t);
        //   // foregroundDecoration: Decoration

        //   // constraints: BoxConstraints
        //   // margin : EdgeInsetsGeometry:
        //   // transform: Matrix4,

        //   child: Container(
        //     color: Colors.red,
        //     height: 60,
        //     width: 60,
        //   ),
        // new Row(
        //     // mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Container(
        //         color: Colors.red,
        //         height: 60,
        //         width: 60,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //         height: 60,
        //         width: 30,
        //       ),
        // ])
        // )
        );
  }
}
