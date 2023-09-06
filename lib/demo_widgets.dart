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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlueBox(),
        BlueBox(),
        BlueBox()
      ],
    );
  }
}
