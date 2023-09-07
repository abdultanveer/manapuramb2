import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ListApp(),
  ),
));

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,

      children: <Widget>[
        Container(
            width: 200 ,child: ListTile(leading: Icon(Icons.map),title: Text("Map"))),
        Container(width: 200 ,child: ListTile(leading: Icon(Icons.photo_album),title: Text("Album"))),
        Container(width: 200 ,child: ListTile(leading: Icon(Icons.phone),title: Text("phone"))),
        Container(width: 200 ,child: ListTile(leading: Icon(Icons.phone),title: Text("phone"))),
        Container(width: 200 ,child: ListTile(leading: Icon(Icons.phone),title: Text("phone"))),


      ],
    );
  }
}
