import 'package:flutter/material.dart';
import 'Media_Querry.dart';

class Listview_builder extends StatefulWidget {
  @override
  _Listview_builderState createState() => _Listview_builderState();
}

class _Listview_builderState extends State<Listview_builder> {
  List<Map> list9 = [
    {"Name": "Khanbaba", "Age": "21", "Weight Left": "400kg"},
    {"Name": "Umar", "Age": "32", "Weight Left": "200kg"},
    {"Name": "Adnan", "Age": "36", "Weight Left": "300kg"},
    {"Name": "Ahmad", "Age": "31", "Weight Left": "400kg"},
    {"Name": "Umar", "Age": "30", "Weight Left": "200kg"},
    {"Name": "Khan", "Age": "26", "Weight Left": "300kg"},
    {"Name": "Khanbaba", "Age": "30", "Weight Left": "400kg"},
    {"Name": "Khan2", "Age": "20", "Weight Left": "200kg"},
    {"Name": "Adnan2", "Age": "36", "Weight Left": "300kg"},
    {"Name": "Anees", "Age": "24", "Weight Left": "100kg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('List view Builder'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Media_Query(),
                ),
              );
            },
            icon: Icon(Icons.forward),
          ),
        ],
      ),
      body: Card(
        color: Colors.blueGrey[300],
        child: ListView.builder(
          itemCount: list9.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text("$index"),
                ),
                title: Column(
                  children: [
                    Text("Name=>${list9[index]["Name"]}"),
                    Text("Age=>${list9[index]["Age"]}"),
                    Text("Weight=>${list9[index]["Weight Left"]}"),
                  ],
                ),
                trailing: Icon(Icons.image),
              ),
            );
          },
        ),
      ),
    );
  }
}
