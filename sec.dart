import 'package:flutter/material.dart';
//import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dio/dio.dart';


class sec extends StatefulWidget {

  @override

  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<sec> {

  void initState() {
    super.initState();
    statedata();
    print(state);

  }

 // int index, event_id, description;
  List state = List();
  GlobalKey<FormState> keys = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      body: ListView.builder(

        itemCount: state == null ? 0 : state.length,
        itemBuilder: ( context, index){
          return Column(children: <Widget>[
            Text(state[index]["address"]),
            Image.network(state[index]["image"]),
          ],);



      }

      )

    ),);
  }

  Future statedata() async {
    print("data");
    //_stateSelection = null;
    Dio dio = new Dio();
    Response response = await dio.get(
        "http://jainculturalgroup.com/ws/event-list.php");
    print(response.data.toString());
    setState(() {
      state = response.data['result'];
      print(state);

    });
  }
}