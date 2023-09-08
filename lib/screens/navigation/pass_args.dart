import 'package:flutter/material.dart';
import 'package:manapuramb2/screens/navigation/extract_screen_args.dart';
import 'package:manapuramb2/model/screen_args.dart';

void main()=> runApp(MaterialApp(
  home: PassArgsScreen(),
  routes: {
    //'/second': (context) => ExtractScreenArgs()
    ExtractScreenArgs.routeName:(context) => ExtractScreenArgs(),
  },
));
class PassArgsScreen extends StatelessWidget {
  const PassArgsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pass args'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(
                context,
                ExtractScreenArgs.routeName,
                arguments: ScreenArgsBox("my title","my message"));
          },
          child: Text('send data'),
        ),
      ),
    );
  }
}
