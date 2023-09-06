import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("hello world"),
          buildTitleSection(),
        ],
      ),
    );
  }
  
  Row buildTitleSection(){
    return Row(
      children: [
        Column(
          children: [
            Text("lake compound"),
            Text("switzerland")
          ],
        ),
        Icon(Icons.star),
        Text("41")
      ],
    );
  }
}
