import 'package:flutter/material.dart';

class GridView2020 extends StatefulWidget {
  @override
  GridView2020State createState() => GridView2020State();
}

class GridView2020State extends State<GridView2020> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("GridView"),
          ),
        ),
        body: Container(
          child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              Card(
                  color: Colors.blue[900],
                  elevation: 10,
                  child: Column(
                    children: [
                      Image.asset(
                        "Images/Planet.png",
                        height: 172,
                        width: 100,
                      ),
                    ],
                  )),
              Card(
                color: Colors.green,
                elevation: 10,
                child: Image.asset("Images/flage.gif"),
              ),
              Card(
                color: Colors.blue,
                elevation: 30,
                child: Center(
                  child: Text(
                    "Population",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Card(
                color: Colors.yellow,
                elevation: 30,
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(color: Colors.red[900]),
                  ),
                ),
              ),
              Card(
                color: Colors.red,
                elevation: 30,
                child: Text("Hello"),
              ),
              Card(
                  color: Colors.green[800],
                  elevation: 30,
                  child: Column(
                    children: [Text("data")],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
