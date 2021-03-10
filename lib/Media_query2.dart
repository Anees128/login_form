import 'package:flutter/material.dart';

class Media_Query2 extends StatefulWidget {
  @override
  _Media_Query2State createState() => _Media_Query2State();
}

class _Media_Query2State extends State<Media_Query2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Media Query2"),
            backgroundColor: Colors.amber,
          ),
          body: ListView(
            children: [
              Row(
                children: [
                  Center(
                    child: Container(
                      color: Colors.blue,
                      height: height / 2,
                      width: width / 2,
                      child: Center(child: Text("Container1")),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.green,
                      height: height / 3,
                      width: width / 2,
                      child: Center(child: Text("Container2")),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      color: Colors.blue,
                      height: height / 2,
                      width: width / 2,
                      child: Center(child: Text("Container1")),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.green,
                      height: height / 3,
                      width: width / 2,
                      child: Center(child: Text("Container2")),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class Of {}
