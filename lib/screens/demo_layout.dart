import 'package:flutter/material.dart';
import 'package:manapuramb2/widgets/fav_widget.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('images/lake.jpg', width: 250, height: 250,),
          _titleSection(),
          _buttonSection(),
          _textSection(),

        ],
      ),
    );
  }
}

Widget _titleSection (){
  return Row(
    children: [
      Column(
        children: [
          Text("lake compound"),
          Text("switzerland")
        ],
      ),
      FavoriteWidget()
    ],
  );
}

Row _buttonSection(){
  return Row(
    children: [
      buttonColumn(Icons.call, "call"),
      buttonColumn(Icons.route, "route"),
      buttonColumn(Icons.share, "share"),


    ],

  );
}


Column buttonColumn(IconData icon, String label){
  return Column(
    children: [
      Icon(icon),
      Text(label)
    ],
  );
}

Text _textSection(){
  return Text(
  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,);
}
