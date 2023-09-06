import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFav(){
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }


    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            color: Colors.red,
            onPressed: _toggleFav,
            icon: (_isFavorited ? const Icon(Icons.star)
            : const Icon(Icons.star_border)),
          ),
        ),
        SizedBox(
          width: 18,
          child: Text('$_favoriteCount'),
        )
      ],
    );
  }
}
