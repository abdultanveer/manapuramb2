import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
          onTap: (){},
          child: Hero(
              tag: 'imageHero',
              child: Image.network('https://picsum.photos/250?image=9')));
  }
}
