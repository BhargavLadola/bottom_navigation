import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'first.dart';
import 'sec.dart';
import 'third.dart';
import 'home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyHome());


class MyHome extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {

  @override

  Widget build(BuildContext context) {
     return MaterialApp(home:

       Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.b"khgjuild method, and use it to set our appbar title.
        title: Text("gg"),
      ),

      body: Stack(children: <Widget>[
        SplashScreen(seconds: 3,navigateAfterSeconds: MyHomePage(),backgroundColor: Colors.green,
        loaderColor: Colors.lightBlue,),

        Column(children: <Widget>[
          Text('data'),
          SizedBox(height: 20,),
          Image(image: AssetImage("assets/a.jpg"),fit: BoxFit.cover,height: 50,width: 50,),
          Image.asset('assets/a.jpg'),
        ],)
      ],)       // This trailing comma makes auto-formatting nicer for build methods.
    ),);
  }
}
