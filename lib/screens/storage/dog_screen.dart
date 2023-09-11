import 'package:flutter/material.dart';
import 'package:manapuramb2/database/crud.dart';
import 'package:manapuramb2/model/dog.dart';

var dogDao =  DogDao();
var database;

void main() async{
  database = dogDao.openDb();

  runApp(MaterialApp(
    home: DogApp(),
  ));
}

class DogApp extends StatelessWidget {
   DogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('database demo'),
      floatingActionButton: FloatingActionButton(onPressed: addDog,
        child: Icon(Icons.add),),
    );
  }

  void addDog() async{
    var dog = Dog(id: 1, name: "german shepherd", age: 2);
    await dogDao.insertDog(dog);
  }
}
