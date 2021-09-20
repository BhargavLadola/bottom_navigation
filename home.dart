import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/services.dart';
import 'first.dart';
import 'sec.dart';
import 'third.dart';
import 'package:progress_dialog/progress_dialog.dart';



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int selectindex = 0;
  ProgressDialog pr;
  @override
  void initState() {//SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
    pr = new ProgressDialog(context,type: ProgressDialogType.Normal);
    // TODO: implement initState
    super.initState();
  }
  final page =[first(),sec(),third()];
  @override

  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: submit,child:

      MaterialApp(home:

      Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.b"khgjuild method, and use it to set our appbar title.
          title: Text("gg"),
        ),
        bottomNavigationBar: BottomNavyBar(selectedIndex: selectindex,
          onItemSelected: (index){
            setState(() {
              selectindex = index;

            });


          },
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.account_balance,),title: Text('home'),activeColor: Colors.green
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.add_shopping_cart,),title: Text('main'),activeColor: Colors.black87
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.arrow_back,),title: Text('flutter'),activeColor: Colors.lime
            ),




          ],

        ),
        body: page[selectindex]
      // This trailing comma makes auto-formatting nicer for build methods.
    ),));
  }

  Future<bool> submit() {
    showDialog(context: context,builder: (BuildContext context)

    {
      return AlertDialog(title: Text('title'),
        actions: <Widget>[RaisedButton(onPressed: (){},child: Text('yes'),color: Colors.green,),
          RaisedButton(onPressed: (){},child: Text('no'),color: Colors.amber,)],);
    }
    );
  }
}
