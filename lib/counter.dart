import 'package:manapuramb2/model/album.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class Counter {
  int value = 0;

  void increment() => value++;

  void decrement() => value--;
}

/*void main()async{
  fetchAlbum(http.Client());
}*/

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    print(response.body);
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}