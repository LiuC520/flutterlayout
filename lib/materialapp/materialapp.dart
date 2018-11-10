// // Copyright 2017 The Chromium Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_layout/container/transform.dart';
// import 'package:flutter_layout/container/scale1.dart';
// import 'package:flutter_layout/container/rotation.dart';
// import 'package:flutter_layout/materialapp/materialapp.dart';
// import 'dart:math';
// import '../home.dart';
// import 'package:flutter/cupertino.dart';

// void main() => runApp(new MyApp());

// final routes = {
//   '/Transform1': (BuildContext context) => new Transform1(),
//   '/Scale1': (BuildContext context) => new Scale1(),
//   '/Rotation1': (BuildContext context) => new Rotation1(),
//   '/': (BuildContext context) => new Home(),
// };
// Random a = Random(10);

// class MyApp extends StatelessWidget {
//   /**
//    * 支持的语言
//    */
//   static final List<Locale> supportedLocales = [
//     const Locale('en', 'US'),
//     const Locale('fi', 'FI'),
//   ];

//   static Locale localeResolutionCallback(
//       Locale locale, Iterable<Locale> supportedLocales) {
//     for (var supportedLocale in supportedLocales) {
//       if (supportedLocale.languageCode == locale.languageCode) {
//         return supportedLocale;
//       }
//     }
//     return supportedLocales.first;
//   }

//   static final List<LocalizationsDelegate> localizationsDelegates = [
//     // AppLocalizations.delegate,
//     // GlobalMaterialLocalizations.delegate,
//     // GlobalWidgetsLocalizations.delegate,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       /**
//        * 如果首页指定了，routes里面就不能有'/'的根路由了，会报错，/指定的根路由就多余了
//        * 如果没有home指定具体的页面，那routes里面就傲有/来指定根路由
//        * 路由的顺序按照下面的规则来：
//        * 1、如果有home，就会从home进入
//        * 2、如果没有home，有routes，并且routes指定了入口'/'，就会从routes的/进入
//        * 3、如果上面两个都没有，或者路由赵达不到，如果有 onGenerateRoute，就会进入生成的路由
//        * 4、如果连上面的生成路由也没有，就会走到onUnknownRoute，不明所以的路由，比如网络连接失败，可以进入断网的页面
//        */
//       // home: Home(),
//       /**
//      * routes是一个对象，键是字符串，值是widgetbuilder，也就是widget
//      */
//       routes: routes,
//       initialRoute: '/',
//       /**
//        * 生成路由
//        */
//       // onGenerateRoute: (RouteSettings settings) {
//       //   return new MaterialPageRoute<void>(
//       //     settings: settings,
//       //     builder: (BuildContext context) => Text('生成了路由'),
//       //   );
//       // },
//       // onUnknownRoute: (RouteSettings settings) => MaterialPageRoute<void>(
//       //     settings: settings,
//       //     builder: (BuildContext context) => Text('路由找不到了')),

//       // onGenerateRoute: (RouteSettings settings) {
//       //   return new MaterialPageRoute<void>(
//       //     settings: settings,
//       //     builder: (BuildContext context) => MaterialApp(
//       //           // routes: <String, WidgetBuilder>{
//       //           //   '/': (context) => Text('用MaterialApp生成了新的路由')
//       //           // },
//       //           routes: routes,
//       //         ),
//       //   );
//       // },
//       /**
//        * 导航观察者
//        */
//       navigatorObservers: <NavigatorObserver>[NewObserver()],

//       /**
//        * 这个是直接渲染这个builder，不会走路由，优先渲染这个里面的widget
//        *
//        */
//       // builder: (BuildContext context, Widget w) => Text("生成新的view"),
//       title:
//           '啥东西', //设备用于识别用户的应用程序的单行描述。在Android上，标题显示在任务管理器的应用程序快照上方，当用户按下“最近的应用程序”按钮时会显示这些快照。 在iOS上，无法使用此值。 来自应用程序的`Info.plist`的`CFBundleDisplayName`在任何时候都会被引用，否则就会引用`CFBundleName`。要提供初始化的标题，可以用 onGenerateTitle。
//       /**
//        * onGenerateTitle的context包含了WidgetsApp的初始参数(Localizations)啥的，
//        * onGenerateTitle这个回调，每次在WidgetsApp构建时都会重新生成
//        */
//       onGenerateTitle: (BuildContext context) =>
//           '${a.nextInt(100)}-随机标题', //生成app的name，不能反回空，返回的是字符串
//       /**
//        *  主题
//        * */
//       theme: new ThemeData(
//           primarySwatch: Colors.red, brightness: Brightness.light),
//       color: Colors.green,
//       /**
//        * CPU 15.5fps 60.7ms/frame
//        * UI 0.5fps 2059.2ms/frame
//        */
//       // showPerformanceOverlay: true, //打开性能，覆盖在屏幕最上面，里面包含

//       // checkerboardRasterCacheImages: true,
//       // checkerboardOffscreenLayers: true,
//       /**
//        * 打开一个覆盖图，显示框架报告的可访问性信息
//        * 显示边框
//        */
//       // showSemanticsDebugger: true,
//       /**
//        * 右上角显示一个debug的图标，只有debug才能看到，
//        * release版本没有效果
//        *
//        */
//       debugShowCheckedModeBanner: true,
//       debugShowMaterialGrid: true,

//       // home: new WallScreen(analytics: analytics, observer: observer),

//       //   navigatorKey,

//       // locale: Locale(_languageCode), //指定支持的语言和国家
//       supportedLocales: supportedLocales,
//       localizationsDelegates: localizationsDelegates,
//       localeResolutionCallback: localeResolutionCallback,
//     );
//   }
// }

// //导航的观察者
// //继承NavigatorObserver
// class NewObserver extends NavigatorObserver {
//   @override
//   void didPush(Route route, Route previousRoute) {
//     // 当调用Navigator.push时回调
//     super.didPush(route, previousRoute);
//     //可通过route.settings获取路由相关内容
//     print(route.settings);
//     print(previousRoute);
//   }

//   @override
//   void didPop(Route route, Route previousRoute) {
//     // TODO: implement didPop
//     // 当调用Navigator.pop时回调
//     super.didPop(route, previousRoute);
//     print(route);
//     //route.currentResult获取返回内容
//     print(previousRoute);
//   }

//   @override
//   void didRemove(Route route, Route previousRoute) {
//     // TODO: implement didRemove
//     // 当调用Navigator.Remove时回调
//     super.didRemove(route, previousRoute);
//     print(route);
//     print(previousRoute);
//   }
// }
