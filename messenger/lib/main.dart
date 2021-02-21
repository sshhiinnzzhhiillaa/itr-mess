import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Messenger",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Messenger"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Text("Hello world", style: TextStyle(fontSize: 40.0),),
        floatingActionButton: FloatingActionButton(child: Text("Button")),
        backgroundColor: Colors.teal[100],
      )));
}
