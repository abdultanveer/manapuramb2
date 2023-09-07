import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:MyForm() ,
));

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'enter search term'
        ),),
        TextFormField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'enter user name'
          ),
        )
      ],
    );
  }
}

