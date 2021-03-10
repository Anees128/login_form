import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget {
  String name1;
  String password1;
  secondscreen({
    @required this.name1,
    @required this.password1,
  });
  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number"),
      ),
      body: Column(
        children: [Text('${widget.name1}'), Text("${widget.password1}")],
      ),
    );
  }
}
