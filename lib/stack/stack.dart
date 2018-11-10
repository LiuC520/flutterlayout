import 'package:flutter/material.dart';
import 'dart:ui';

class Stack1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      body:
//         位置信息
// 如果要使用绝对定位，那么需要把内容包裹在 Positioned 容器里，而 Positioned 又需要包裹在 Stack 容器里。
          new Container(
        child: new Column(
          children: <Widget>[
            new Stack(
              alignment: AlignmentDirectional.topCenter,
              textDirection: TextDirection.ltr,
              fit: StackFit.loose,
              overflow: Overflow.clip,
              children: [
                new Positioned(
                  child: new Container(
                    child: new Text("定位"),
                  ),
                  left: 24.0,
                  top: 24.0,
                ),
                Material(
                  type: MaterialType.canvas,
                  elevation: 0.0,
                  color: Colors.red,
                  shadowColor: const Color(0xFF000000),
                  textStyle: TextStyle(fontSize: 16, color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  clipBehavior: Clip.none,
                  animationDuration: kThemeChangeDuration,
                  child: Text('124'),
                ),
                Placeholder(
                  color: Colors.blue, //占位符的颜色
                  strokeWidth: 4, //线宽
                  fallbackWidth: 100, //在没有设置宽度的情况下的最大宽度
                  fallbackHeight: 100, //在没有设置高度的情况下的最大高度
                ),
                // Visibility()
              ],
            ),
            Divider(),
            Visibility(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.blueAccent,
                    child: Text('可见与否'),
                  )
                ],
              ),
              visible: true,
              replacement: SizedBox.shrink(),
              //在子view不可见时，是否保存子view的状态
              //保持子树的状态可能很昂贵（因为这意味着所有对象仍在内存中;它们的资源不会被释放）。
              //只有在无法按需重建时才应保留它。 维持状态的一个示例是子子树包含[导航器]，因为该窗口小部件保持精细状态，无法在运行中重新创建。
// 如果此属性为true，则使用[Offstage]小部件隐藏子节点而不是用[replacement]替换它。
//如果此属性为false，则[maintainAnimation]也必须为false
//动态更改此值可能会导致子树的当前状态丢失（如果[visible]为true，则会立即创建具有新[State]对象的子树的新实例）。
              maintainState: false, //
              /**
               * 当窗口小部件不可见时保持动画活动甚至比仅维护状态更昂贵。
    这可能有用的一个例子是子树是否使用[AnimationController]及时为其布局设置动画，并且该布局的结果用于影响其他一些逻辑。 如果此标志为false，则[child]子树内托管的任何[AnimationController]将被静音，而[visible]标志为false。
    如果此属性为true，则不使用[TickerMode]窗口小部件。
   如果此属性为false，则[maintainSize]也必须为false。
  动态更改此值可能会导致子树的当前状态丢失（如果[visible]为true，则会立即创建具有新[State]对象的子树的新实例）。
               */
              maintainAnimation: false, //是否保留动画，maintainState必须设置
              /**
               *要设置此项，还必须设置[maintainAnimation]。
 当窗口小部件不[可见]时维持大小并不比仅保持动画运行而不保持大小更昂贵，并且在某些情况下如果子树很简单并且[可见]属性经常切换，则可能稍微便宜一些，因为它可以避免在切换[visible]属性时触发布局更改。如果[子]子树不是微不足道的话，那么即使保持状态也要便宜得多（参见[maintainState]）。
 如果此属性为true，则使用[Opacity]而不是[Offstage]。
 如果此属性为false，则[maintainSemantics]和[maintainInteractivity]也必须为false。
   动态更改此值可能会导致子树的当前状态丢失（如果[visible]为true，则会立即创建具有新[State]对象的子树的新实例）。
   也可以看看：
   * [AnimatedOpacity]和[FadeTransition]，将动画应用于
     不透明度可带来更微妙的效果。
               */
              maintainSize: false, //保留可见时的宽高，相当于visible，为false相当于gone消失
              /**
               * 是否在隐藏窗口小部件时保持窗口小部件的语义（例如，用于可访问性）。
  要设置此项，还必须设置[maintainSize]。
   默认情况下，将[maintainSemantics]设置为false，当对用户隐藏时，[child]对辅助功能工具不可见。 如果此标志设置为true，则辅助功能工具将报告窗口小部件，就好像
  它出现了。
  
    动态更改此值可能会导致子树的当前状态丢失（如果[visible]为true，则会立即创建具有新[State]对象的子树的新实例）。
               */
              maintainSemantics: false,
              /**
               * 是否允许窗口小部件在隐藏时是交互式的。
  要设置此项，还必须设置[maintainSize]。
   默认情况下，当[maintainInteractivity]设置为false时，触摸事件在向用户隐藏时无法到达[child]。 如果此标志设置为true，则仍会传递触摸事件。
   动态更改此值可能会导致子树的当前状态丢失（如果[visible]为true，则会立即创建具有新[State]对象的子树的新实例）。
               */
              maintainInteractivity: false,
            ),
            /**
             * height:整个divider的高度，线在中间
             * indent: 左边距
             * color: 颜色
             */
            Divider(height: 6, indent: 30.0, color: Colors.red),
            Container(
              color: Colors.blueAccent,
              child: Text('可见与否'),
            )
          ],
        ),
        width: 200.0,
        height: 400.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.adb), title: Text("1")),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("2"))
        ],
      ),
    );
  }
}
