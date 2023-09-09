import 'package:flutter/material.dart';
import 'package:manapuramb2/dartexs/async/test_json.dart';
import 'package:manapuramb2/model/album.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(body: AlbumApp(),),
));


class AlbumApp extends StatefulWidget {
  const AlbumApp({super.key});

  @override
  State<AlbumApp> createState() => _AlbumAppState();
}

class _AlbumAppState extends State<AlbumApp> {
  late Future<List<Album>> listAlbums;
  @override
  void initState() {
    super.initState();
    listAlbums = fetchAlbum();
    //get those albums
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: listAlbums,
        builder: (context,snapshot){
      if(snapshot.hasData) {
        return Container(
          child: ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].title),
                );
              }),
        );
      }
      else return CircularProgressIndicator();
        });
  }
}

