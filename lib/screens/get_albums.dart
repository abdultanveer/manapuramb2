import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(body: AlbumApp(),),
));


class AlbumApp extends StatefulWidget {
  const AlbumApp({super.key});

  @override
  State<AlbumApp> createState() => _AlbumAppState();
}

class _AlbumAppState extends State<AlbumApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
