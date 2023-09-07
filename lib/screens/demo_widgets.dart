import 'package:flutter/material.dart';
import 'package:manapuramb2/widgets/blue_box.dart';

void main() => runApp(MaterialApp(
  home: MyWidget(),
));


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BlueBox(),
        const SizedBox(width: 50),
        SizedBox(
          width: 100,
            height: 100,
            child: BlueBox()),
        BlueBox()
      ],
    );
  }
}
