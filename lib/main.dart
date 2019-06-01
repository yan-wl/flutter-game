import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'splashScreen.dart';

void main() {
   SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(
      new MaterialApp(home: new SplashScreen(), routes: <String, WidgetBuilder>{
    '/HomeScreen': (BuildContext context) => new MyApp(),
  }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttergame',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'CS Prayers game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("demo Home page",)),
      body: Center(
         child: Text("test page"),)
      );
  }
}
