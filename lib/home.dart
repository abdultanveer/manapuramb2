import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar( title: Text("welcome to flutter"),),
    body: Center(child: Text("you clicked 12 times")),
    floatingActionButton: FloatingActionButton(
      onPressed: _increment,
      child: Icon(Icons.add),
    ),
  ),
));


void _increment() {
}
