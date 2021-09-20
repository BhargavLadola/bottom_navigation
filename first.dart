import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:progress_dialog/progress_dialog.dart';


class first extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<first> {
  ProgressDialog pr;
  bool visibility = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) { pr = new ProgressDialog(context,type: ProgressDialogType.Normal);
    return MaterialApp(home:

      Scaffold(

        body: Column(
          children: <Widget>[
            Center(child: RaisedButton(
              onPressed: submit,
              child: Text('diolouge'),
            ),

            ),
            visibility ?
            Row(children: <Widget>[
              Expanded(flex: 3,child: RaisedButton(onPressed: (){
                pr.show();
              },child: Text('button'),color: Colors.lime,)),
              Expanded(flex: 5,child: RaisedButton(onPressed: (){},child: Text('submit',),color: Colors.lightBlue,))
            ],) : Container(),
          ],
        ),

      // This trailing comma makes auto-formatting nicer for build methods.
    ),);
  }

  void submit() {
    showDialog(context: context,builder: (BuildContext context)

    {
      return AlertDialog(title: Text('title'),
      actions: <Widget>[RaisedButton(onPressed: (){},child: Text('yes'),color: Colors.green,),
      RaisedButton(onPressed: (){},child: Text('no'),color: Colors.amber,)],);
    }
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pr.hide();
  }
}
