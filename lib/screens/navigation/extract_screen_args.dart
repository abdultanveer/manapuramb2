import 'package:flutter/material.dart';
import 'package:manapuramb2/model/screen_args.dart';

class ExtractScreenArgs extends StatelessWidget {
  static const routeName = '/extractArgs';
  const ExtractScreenArgs({super.key});
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArgsBox;
  //as = typecasting

    return Scaffold(
      appBar: AppBar(title: Text(args.title),),
      body: Center(child: Text(args.message),),
    );
  }
}
