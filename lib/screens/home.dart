import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyText()
));


class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  int counter = 0;
  void _increment(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("welcome to flutter"),),
      body: Center(child: Text("you clicked $counter times")),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );

  }
}



