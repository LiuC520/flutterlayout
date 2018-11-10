import 'package:flutter/material.dart';

/**
 * 通常用在
 */
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("对话框"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('\n对话框，通常是应用的一些信息\n当然我们一般都是需要自定义的，不用flutter自带的'),
              AboutDialog(
                applicationName: '标题',
                applicationIcon: Icon(Icons.add),
                applicationVersion: '1.0.0', //版本号，默认为空
                applicationLegalese: '版权所有：刘成',
                children: <Widget>[Text("具体的内容"), Text('具体的布局')],
              ),
              // AboutListTile(
              //   child: Text('data'),
              //   icon: Icon(Icons.add),
              //   applicationName: '标题',
              //   applicationIcon: Icon(Icons.add),
              //   applicationVersion: '1.0.0', //版本号，默认为空
              //   applicationLegalese: '版权所有：刘成',
              //   aboutBoxChildren: <Widget>[Text('12312')],
              // )
            ],
          ),
        ));
  }
}
