import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: Scaffold(
    body: TapboxA(),
  ),
));

class TapboxA extends StatefulWidget {
  const TapboxA({super.key});

  @override
  State<TapboxA> createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false; //this is the state

  void handleTap(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active': 'Inactive'
          ),
        ),
        width: 200,height: 200,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen: Colors.grey
        ),
      ),
    );
  }
}
