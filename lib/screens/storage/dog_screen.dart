import 'package:flutter/material.dart';
import 'package:manapuramb2/database/crud.dart';
import 'package:manapuramb2/model/dog.dart';
import 'package:manapuramb2/screens/storage/add_dog.dart';


var dogDao = new DogDao();
var database;

void main() async {
  database = await dogDao.openDb();
  runApp(MaterialApp(
    home: DogsApp(),
  ));
}

class DogsApp extends StatelessWidget {
  DogsApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dogs db demo'),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [

          FutureBuilder(future: getAllDogs(), builder: (context, snapshot) {
            return Flexible(
              flex: 1,
              child: Center(
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(snapshot.data![index].age.toString()),
                        title: Text(snapshot.data![index].name),
                      );
                    }),
              ),
            );
          }),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>  AddDog(dogDao)));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addDog() async {
    /* var dog = Dog(id: int.parse(idController.text),
        name: nameController.text,
        age: int.parse(ageController.text));
    await dogDao.insertDog(dog)    ;*/
  }

  Future<List<Dog>> getAllDogs() {
    return dogDao.readDog();
  }


}
