import 'package:flutter/material.dart';

import 'Listtile.dart';
import 'login.dart';

class Stack_2020 extends StatefulWidget {
  @override
  _StackState createState() => _StackState();
}

class _StackState extends State<Stack_2020> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Stack "),
            ),
            actions: [
              Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  icon: Icon(Icons.forward),
                ),
              ),
            ],
            backgroundColor: Colors.blue[900],
          ),
          backgroundColor: Colors.green[700],
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                height: 350,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 35,
                      right: 15,
                      left: 80,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        constraints:
                            BoxConstraints(maxWidth: 280, maxHeight: 180),
                      ),
                    ),
                    Positioned(
                      right: 130,
                      bottom: 120,
                      left: .05,
                      child: Image(
                        image: AssetImage("Images/Planet.png"),
                        height: 190,
                      ),
                    ),
                    Positioned(
                      left: 180,
                      bottom: 250,
                      child: Text(
                        "Mars",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 187,
                      child: Text(
                        "Hellow Mars",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            fontSize: 25,
                            color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("Go to Login"),
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
