import 'package:flutter/material.dart';
import 'listview_builder.dart';

class Weightonplanet extends StatefulWidget {
  @override
  _WeightonplanetState createState() => _WeightonplanetState();
}

class _WeightonplanetState extends State<Weightonplanet> {
  int radioValue = 1;
  var value;
  String group = "Yes";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Weight on planet"),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Listview_builder(),
                  ),
                );
              },
              icon: Icon(Icons.forward),
            ),
          ],
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          alignment: Alignment.topCenter,
          child: ListView(
            padding: const EdgeInsets.all(2.5),
            children: <Widget>[
              Image.asset(
                'Images/Planet.png',
                height: 133,
                width: 200,
              ),
              Container(
                margin: EdgeInsets.all(3.5),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextField(
                      controller: null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Your Weight on Earth",
                        hintText: "In Pounds",
                        icon: Icon(Icons.person_outline),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.all(5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Radio Buttons

                        Radio(
                            activeColor: Colors.green,
                            value: "Yes",
                            groupValue: group,
                            onChanged: (T) {
                              setState(() {
                                group = T;
                                print(group);
                              });
                            }),
                        Text(
                          "pluto",
                          style: TextStyle(color: Colors.white38),
                        ),

                        Radio(
                            activeColor: Colors.red,
                            value: "No",
                            groupValue: group,
                            onChanged: (T) {
                              setState(() {
                                group = T;
                                print(group);
                              });
                            }),
                        Text(
                          "Mars",
                          style: TextStyle(color: Colors.white38),
                        ),
                        Radio(
                            activeColor: Colors.yellow,
                            value: "other",
                            groupValue: group,
                            onChanged: (T) {
                              setState(() {
                                group = T;
                                print(group);
                              });
                            }),
                        Text(
                          "Mars",
                          style: TextStyle(color: Colors.white38),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5.6)),
              Center(
                child: Text(
                  "Hello There",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w500),
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
