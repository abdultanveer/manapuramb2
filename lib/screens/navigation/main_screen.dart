import 'package:flutter/material.dart';
import 'package:manapuramb2/screens/navigation/details_screen.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('hero widget animation demo'),),
    body: MainScreen(),
  ),
));

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
         return const DetailsScreen();
        }));
      },
        child: Hero(
          tag: 'imageHero',
            child: Image.network('https://picsum.photos/250?image=9')));
  }
}
