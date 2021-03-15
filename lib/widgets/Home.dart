import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Container(color: Colors.red,margin: EdgeInsets.fromLTRB(5,5,5,60),),
            )));
  }
}
