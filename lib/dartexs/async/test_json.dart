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
  http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  var album = Album.fromJson(jsonDecode(response.body));
  print(album.title);
  return album;

}