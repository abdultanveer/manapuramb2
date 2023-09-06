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
          Text("hello world")
        ],
      ),
    );
  }
}
