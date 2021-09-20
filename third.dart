import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';


class third extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:

    Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.b"khgjuild method, and use it to set our appbar title.
          title: Text("gg"),
        ),

        body: Center(child: Stack(
          children: <Widget>[
         Image.asset('assets/a.jpg'),
             Text("nf"),

          ],
        ))
      // This trailing comma makes auto-formatting nicer for build methods.
    ),);
  }
}
