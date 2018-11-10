import 'package:flutter/material.dart';
import 'dart:ui';
import 'routers.dart' show routerNames, routerNamesCN;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var list = [];
  var listCN = [];
  var pd = '';
  @override
  void initState() {
    super.initState();
    list.addAll(routerNames);
    listCN.addAll(routerNamesCN);
  }

  @override
  Widget build(BuildContext context) {
    Widget listView = new ListView.separated(
        padding: const EdgeInsets.all(10.0),

        // gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 1,
        //     childAspectRatio: 1.0,
        //     crossAxisSpacing: 1.0,
        //     mainAxisSpacing: 1.0),
        itemCount: list.length,
        itemBuilder: (context, i) => new GestureDetector(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                // color: Colors.green[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(list[i]),
                    Text(listCN[i]),
                  ],
                ),
              ),
              onTap: () => Navigator.pushNamed(context, "/" + list[i]),
            ),
        separatorBuilder: (context, i) => Divider());

    void find(d) {
      print(d + "1");
      if (routerNames.indexOf(d) >= 0) {
        var newd = [];
        var newdcn = [];
        newd.add(d);
        newdcn.add(routerNamesCN[routerNames.indexOf(d)]);

        list.clear();
        listCN.clear();
        this.setState(() {
          list.addAll(newd);
          listCN.addAll(newdcn);
        });
      }
      print(d == '');
      if (d == '') {
        this.setState(() {
          list.addAll(routerNames);
          listCN.addAll(routerNamesCN);
        });
      }
    }

    // void reset(d) {
    //   if(d.le){

    //   }
    //   list.clear();
    //   listCN.clear();
    //   list = routerNames;
    //   listCN = routerNamesCN;
    // }

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Container(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('布局')],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 6, 0, 6),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: '请输入布局的英文名称',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none, //默认带有下划线，none就是下划线没有了
                  ),
                  onSubmitted: (d) => find(d),
                  onChanged: (d) => this.setState(() {
                        pd = d;
                      }),
                  //这里面可以动态从 routerNames和routerNamesCN里面查询是否有输入的文字，有的话就搜索出来
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '打开搜索',
              onPressed: () {
                // ...
                find(pd);
              },
            ),
          ],
        ),
        body: listView
        //     new Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     // new Expanded(5
        //     // child: listView,
        //     // ),
        //   ],
        // )
        );
  }
}
