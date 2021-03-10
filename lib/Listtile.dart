import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:loinform/weightonplanet.dart';

class Lsittile extends StatefulWidget {
  @override
  _LsittileState createState() => _LsittileState();
}

class _LsittileState extends State<Lsittile> {
  String title = 'ListTile';
  bool isSwitched = false;
  var textValue = 'OFF';
  mission _mission = mission.yes;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "List Tiles",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Weightonplanet(),
                  ),
                );
              },
              icon: Icon(Icons.forward),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  "Two line ListTile",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                trailing: Switch(
                  onChanged: (bool value) {
                    if (isSwitched == false) {
                      setState(() {
                        isSwitched = true;
                        textValue = 'ON';
                      });
                    } else {
                      setState(() {
                        isSwitched = false;
                        textValue = 'OFF';
                      });
                    }
                  },
                  value: isSwitched,
                  activeColor: Colors.green[700],
                  activeTrackColor: Colors.green[300],
                  inactiveThumbColor: Colors.grey[600],
                  inactiveTrackColor: Colors.grey[400],
                ),
                subtitle: Text(
                  "Subtitle Line",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent.shade400,
                ),
              ),
            ),
            Text('$textValue'),
            ListTile(
              contentPadding: EdgeInsets.all(16.0),
              selected: true,
              onLongPress: () {
                print("object");
              },
              onTap: () {
                print("onTape");
              },
              title: Text(
                'One Line ListTitle',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              title: Text("on line with leading Widget"),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
            ListTile(
              title: Text("One Line With Trailing Widget"),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text("One List With Both Widget"),
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("One Line Dence Tiltle"),
              dense: true,
            ),
            ListTile(
              title: Text("Two line ListTile"),
              subtitle: Text(
                "Second Line Tile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.red,
              ),
            ),
            RadioListTile(
              activeColor: Colors.green,
              title: Text('Yes'),
              value: mission.yes,
              groupValue: _mission,
              onChanged: (mission value) {
                setState(() {
                  _mission = value;
                });
              },
            ),
            RadioListTile(
              activeColor: Colors.red,
              title: Text('No'),
              value: mission.no,
              groupValue: _mission,
              onChanged: (mission value) {
                setState(() {
                  _mission = value;
                });
              },
            ),
            CheckboxListTile(
                title: Text("Check Box ListTile(Slow Motion Animation),"),
                value: timeDilation != 1.0,
                onChanged: (bool value) {
                  setState(() {
                    timeDilation = value ? 10.0 : 1.0;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

enum mission { yes, no }
