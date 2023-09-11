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
  late Future<List<Album>> futureAlbum;
  @override
  void initState() {
    super.initState();
     futureAlbum = fetchAlbum();
     //get those albums
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      /*//use listbuilder with the albums
      child: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context,snapshot){
          return Text(snapshot.data!.title);
        },
      ),*/
    );
  }
}
