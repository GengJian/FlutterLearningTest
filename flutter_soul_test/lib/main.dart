import 'package:flutter/material.dart'; //导入包,这里是导入了Material UI组件库,Material 是一种标准的移动端和Web端视觉设计语言,Flutter默认提供了一套Material风格的UI组件

void main() =>
    runApp(MyApp()); //应用入口Main函数.main函数调用了runApp方法,接受了一个Widget参数.=>是单行函数或者方法的简写

class MyApp extends StatelessWidget {
  //MyApp类代表Flutter应用,继承了StatelessWidget类,意味着应用本身就是一个Widget.（Flutter大多是东西都是widget,包括Alignment/Padding/Layout）.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Flutter在构建页面时,会调用组件的build方法,widget的主要工作是提供以一个build方法()来描述如何构建UI界面(通常是通过组合、拼装其他基础Widget).
    return MaterialApp(
      title: 'Flutter Demo', //应用名称
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red, //系统主题色,导航栏/按钮之类的
      ),
      home: MyHomePage(title: 'Flutter Demo Ted Page'), //应用首页路由
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage是应用的首页,它继承自StatefulWidget类，表明它是一个有状态的Widget
  /*
    Stateful widget可以拥有状态，这些状态在widget生命周期中是可以变的，而Stateless widget是不可变的。
    Stateful widget至少由两个类组成：

    一个StatefulWidget类。
    一个 State类； StatefulWidget类本身是不变的，但是 State类中持有的状态在widget生命周期中可能会发生变化。
  */
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //Scaffold是Material库中提供的页面脚手架，它包含了导航栏和Body以及FloatingActionButton。在实例中，路由默认都是通过Scaffold创建的。
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
