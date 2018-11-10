import 'package:flutter/material.dart';

class AnimatedIcons1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedIconsState();
  }
}

class AnimatedIconsState extends State<AnimatedIcons1>
    with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 2000),
    );

    animationController.forward(); //加上这个，动画才能执行，可以放到按钮的点击事件里面去，
  }

  @override
  Widget build(BuildContext context) {
    var icons = [
      AnimatedIcons.add_event,
      AnimatedIcons.arrow_menu,
      AnimatedIcons.close_menu,
      AnimatedIcons.ellipsis_search,
      AnimatedIcons.event_add,
      AnimatedIcons.home_menu,
      AnimatedIcons.list_view,
      AnimatedIcons.menu_arrow,
      AnimatedIcons.menu_close,
      AnimatedIcons.menu_home,
      AnimatedIcons.pause_play,
      AnimatedIcons.play_pause,
      AnimatedIcons.search_ellipsis,
      AnimatedIcons.view_list
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('动画图片'),
        ),
        body: new GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0),
          itemCount: icons.length,
          itemBuilder: (context, i) => Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                // color: Colors.green[200],
                child: Row(
                  children: <Widget>[
                    AnimatedIcon(
                      size: 30,
                      icon: icons[i],
                      progress: animationController,
                      semanticLabel: 'Show menu',
                    ),
                  ],
                ),
              ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
