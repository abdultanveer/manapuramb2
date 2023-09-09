import 'package:http/http.dart' as http;
void main()async {
  var json = await getJson();
  print(json.body);
}

Future<http.Response> getJson() async {
  var response = http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  return response;
}