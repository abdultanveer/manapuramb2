import 'package:flutter/material.dart';
import 'package:manapuramb2/database/crud.dart';
import 'package:manapuramb2/model/dog.dart';


var dogDao = new DogDao();
var database;
void main() async{
  database = await dogDao.openDb();
  runApp(MaterialApp(
    home: DogsApp(),
  ));
}

class DogsApp extends StatelessWidget {
  DogsApp({super.key});
  var idController = TextEditingController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dogs db demo'),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TextField(controller: idController ,decoration: InputDecoration(labelText: "enter id"),),
          TextField(controller:nameController ,decoration: InputDecoration(labelText: "enter name"),),
          TextField(controller: ageController ,decoration: InputDecoration(labelText: "enter age"),),
          FutureBuilder(future: getAllDogs(), builder: (context,snapshot){
            return Flexible(
              flex: 1,
              child: Center(
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
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
        onPressed: addDog ,
        child: Icon(Icons.add),
      ),
    );
  }

  void addDog() async {
    var dog = Dog(id: int.parse(idController.text),
        name: nameController.text,
        age: int.parse(ageController.text));
    await dogDao.insertDog(dog)    ;
  }

  Future<List<Dog>> getAllDogs(){
    return dogDao.readDog();
  }
}
