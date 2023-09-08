import 'package:flutter/material.dart';
import 'package:manapuramb2/screens/navigation/second_screen.dart';
void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const FirstScreen(),
      '/second': (context)=> const SecondScreen(),
    },

  )
  );
}




class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, '/second');
      }, child: Text('launch screen')),
    );
  }
}
