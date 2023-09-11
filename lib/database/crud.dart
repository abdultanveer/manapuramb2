import 'package:manapuramb2/database/dogs_database.dart';
import 'package:manapuramb2/model/dog.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';


class DogDao {
  var database;


  DogDao(){
    print('dog dao constructor called');
    openDb();
  }

  Future<Database> openDb() async {
    return createDb();
  }

  Future<void> insertDog(Dog dog) async {
    final db = await database;
    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  }