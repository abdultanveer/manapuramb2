import 'package:flutter/material.dart';
import 'package:manapuramb2/database/crud.dart';
import 'package:manapuramb2/model/dog.dart';
import 'package:manapuramb2/screens/storage/dog_screen.dart';

class AddDog extends StatelessWidget {
   AddDog(DogDao dogDao, {super.key});
   bool isUpdate = false;
  var idController = TextEditingController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if(ModalRoute.of(context)!.settings.arguments != null) {
      isUpdate = true;
      Dog dog = ModalRoute
          .of(context)!
          .settings
          .arguments as Dog;

      idController.text = dog.id.toString();
      nameController.text = dog.name;
      ageController.text = dog.age.toString();
    }
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: idController ,decoration: InputDecoration(labelText: "enter id"),),
          TextField(controller:nameController ,decoration: InputDecoration(labelText: "enter name"),),
          TextField(controller: ageController ,decoration: InputDecoration(labelText: "enter age"),),
          ElevatedButton(onPressed: (){
            (isUpdate)? updateDog(): addDog();
           Navigator.pop(context);
          }, child: Text((isUpdate)?'update':'save'))
        ],
      ),
    );
  }

   void addDog() async {
      var dog = Dog(id: int.parse(idController.text),
        name: nameController.text,
        age: int.parse(ageController.text));
    await dogDao.insertDog(dog)    ;
   }
   void updateDog() async {
     var dog = Dog(id: int.parse(idController.text),
         name: nameController.text,
         age: int.parse(ageController.text));
     await dogDao.updateDog(dog)    ;
   }

}
