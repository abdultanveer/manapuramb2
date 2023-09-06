import 'package:flutter/material.dart';
import 'package:manapuramb2/widgets/fav_widget.dart';

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
          Image.asset('images/lake.jpg', width: 640, height: 240,),
          buildTitleSection(),
          buildButtonSection(),
          textSection
        ],
      ),
    );
  }
}
  Widget buildTitleSection(){
    return Container(
      padding: const EdgeInsets.all(32),

      child: Row(
        children: [
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("lake compound",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Text("switzerland",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          FavoriteWidget(),
        ],
      ),
    );
  }

  Row buildButtonSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        buildButtonColumn(Icons.call,"call"),
        buildButtonColumn(Icons.route,"route"),
        buildButtonColumn(Icons.share,"share")
      ],
    );
  }

  Column buildButtonColumn(IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(label,style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,

            ),)
        )
      ],
    );
  }

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

