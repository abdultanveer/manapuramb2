import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:manapuramb2/model/album.dart';
void main()async {
 var album = await fetchAlbum();
}

Future<http.Response> getJson() async {
  var response = http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  return response;
}

Future<Album> fetchAlbum() async {
  http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  List<dynamic> albums = jsonDecode(response.body);
  var album = Album.fromJson(albums[2]);
  print(album.title);
  for (int i=0;i<albums.length; i++){
    //List<Album> albumList =  albumList.add(Album.fromJson(albums[i]));
  }
  //return a List<Album> albums
  //return Album(userId: 1, id: 2, title: "ansari");
  return album;
}