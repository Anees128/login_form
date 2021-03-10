import 'package:flutter/material.dart';

class Media_Query extends StatefulWidget {
  @override
  _Media_QueryState createState() => _Media_QueryState();
}

class _Media_QueryState extends State<Media_Query> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            title: Center(
              child: Text("Media_Querry"),
            ),
            backgroundColor: Colors.lightBlue,
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      color: Colors.red,
                      height: height / 2,
                      width: width / 2,
                      child: Center(
                        child: Text(
                          "DATA1",
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.white,
                      height: height * .35,
                      width: width * .50,
                      child: Center(
                        child: Text(
                          "DATA2",
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.red,
                      height: height * .35,
                      width: width * .50,
                      child: Center(
                        child: Text(
                          "DATA3",
                          style: TextStyle(color: Colors.red.shade200),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.black,
                      height: height * .35,
                      width: width * .50,
                      child: Center(
                        child: Text(
                          "DATA4",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
