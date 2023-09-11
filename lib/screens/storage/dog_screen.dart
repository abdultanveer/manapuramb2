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

class DogApp extends StatefulWidget {
   DogApp({super.key});

  @override
  State<DogApp> createState() => _DogAppState();
}

class _DogAppState extends State<DogApp> {
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add dog'),),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
            labelText: "enter dog name"
          ),),
          TextField(
            controller: ageController,
            decoration: InputDecoration(
            labelText: 'enter dog age'
          ),),
          Text('database demo'),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: addDog,
        child: Icon(Icons.add),),
    );
  }

  void addDog() async{
    var name  = nameController.text;
    var age = ageController.text;
    var dog = Dog(id: 2, name: name, age: int.parse(age));
    await dogDao.insertDog(dog);
  }
}
