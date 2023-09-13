import 'package:flutter/material.dart';
import 'package:manapuramb2/database/dogs_database.dart';
import 'package:manapuramb2/model/dog.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';



class DogDao {
  var database;

  DogDao() {
    print('dog dao constructor called');
    openDb();
  }


  Future<Database> openDb() async {
    WidgetsFlutterBinding.ensureInitialized();

    database = openDatabase(join(await getDatabasesPath(), 'dog.db'),
        version: 1,
        onCreate: (db, version) {
          String sql =
              'CREATE TABLE dogs(id INTEGER PRIMARY KEY,name TEXT,age INTEGER)';
          db.execute(sql);
          print('table created');
        });
    if (database != null) {
      print('db is not null');
    }
    return database;
  }

  Future<void> insertDog(Dog dog) async {
    final db = await database;
    int position = await db.insert('dogs', dog.toMap(),
        nullColumnHack: null, conflictAlgorithm: ConflictAlgorithm.replace);
    print('inserted dog--' + dog.name);
    print("inserted at position =" + position.toString());
  }


  Future<List<Dog>> readDog() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('dogs');
    return List.generate(maps.length, (index) {
      var dog = Dog(id: maps[index]['id'],
          name: maps[index]['name'],
          age: maps[index]['age']);
      print(dog.toString());
      return dog;
    });
  }

  Future<void> deleteDog(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'dogs',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }
}