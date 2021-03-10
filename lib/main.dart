import 'package:flutter/material.dart';
import 'package:loinform/Calendar.dart';
import 'package:loinform/Islamic_Calendar.dart';
import 'package:loinform/TooTip.dart';
import 'package:loinform/listview_builder.dart';
import 'List_view.dart';
import 'login.dart';
import 'Listtile.dart';
import 'weightonplanet.dart';
import 'Media_Querry.dart';
import 'Media_query2.dart';
import 'Stack.dart';
import 'GridView.dart';
import 'GridView.builder.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.red[800]),
        ),
        //this is for theme color

        primaryColor: Colors.blue,
        accentColor: Colors.red,
      ),
      title: "login",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'First Week',
          ),
        ),
        body: ListView(
          children: [
            Form(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Stack_2020(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius: BorderRadius.circular(42),
                        ),
                        height: 70,
                        width: 70,
                        child: Center(
                          child: Text(
                            "INKWELL",
                          ),
                        ),
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
                        child: Text(
                          " Login Page",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => List_view()),
                          );
                        },
                        child: Text(
                          'listview',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listview_builder()),
                          );
                        },
                        child: Text("Listview. Builder"),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GridView2020()),
                          );
                        },
                        child: Text('GridView'),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GridView_biulder()),
                          );
                        },
                        child: Text(
                          'GridView.builder',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Lsittile()),
                          );
                        },
                        child: Text('Listtile'),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Weightonplanet()),
                          );
                        },
                        child: Text("weight on planet"),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Media_Query()),
                          );
                        },
                        child: Text("Media_Querry"),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Media_Query2()),
                          );
                        },
                        child: Text("Media_Querry2"),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Stack_2020()),
                          );
                        },
                        child: Text("Stack"),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ToolTip12()),
                          );
                        },
                        child: Text(
                          'ToolTip',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Calender12()),
                          );
                        },
                        child: Text('Calender'),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IslamicCalender1()),
                          );
                        },
                        child: Text('Islamic Calender'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  practice() {}
}
