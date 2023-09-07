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
  final myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myController.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextField(
            focusNode: myFocusNode,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'enter search term'
          ), controller: myController,

          ),
          TextFormField(
            autofocus: true,
            validator: (text){

              if (text == null || text.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }
            ,onChanged: (text){
              print('First text field: $text (${text.characters.length})');
            },
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'enter user name'
            ),
          ),
          ElevatedButton(
            onPressed: (){
              myFocusNode.requestFocus();
              validateMyFields(context,_formKey);
              showDialog(context: context,
                  builder: (context){
                return AlertDialog(content: Text(myController.text));
                  });
            },
            child: Icon(
      Icons.text_fields
      ))
        ],
      ),
    );
  }
}

void validateMyFields(BuildContext context, GlobalKey<FormState> formKey) {
  if (formKey.currentState!.validate()) {
    // If the form is valid, display a snackbar. In the real world,
    // you'd often call a server or save the information in a database.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Processing Data')),
    );
  }
}


