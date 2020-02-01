
import 'package:flutter/material.dart';
import 'package:meatballapp/home.dart';

import 'package:splashscreen/splashscreen.dart';
// import 'package:flutter_splash/flutter_splash.dart';
 
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 7,
      navigateAfterSeconds: new Myy(),
      title: new Text('',
      
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 7.0
      ),),
      image: new Image.network('https://raw.githubusercontent.com/toranit2541/testmeatballapp/master/meatballapp/images/beef.png'),
      backgroundColor: Colors.pink[50],
      styleTextUnderTheLoader: new TextStyle(),
      
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}

class Myy extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // brightness: Brightness.dark,
    primaryColor: Colors.red[200],
    // accentColor: Colors.cyan[600], 
          

          // primarySwatch: Colors.deepPurple,
        ),
        home: Myyy());
  }
}