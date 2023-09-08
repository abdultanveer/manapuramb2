import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
      },
          child: Text('go back')),
    );
  }
}
