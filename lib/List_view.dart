import 'package:flutter/material.dart';

import 'Listtile.dart';

class List_view extends StatefulWidget {
  @override
  _List_viewState createState() => _List_viewState();
}

class _List_viewState extends State<List_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "List View",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lsittile(),
                  ),
                );
              },
              icon: Icon(Icons.forward),
            ),
          ],
        ),
        backgroundColor: Colors.greenAccent,
        body: ListView(
          children: [
            Container(
              child: Text(
                " List View data",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Top List View",
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    )),
              ),
              color: Colors.white,
              width: 50,
              height: 50,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.person,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 50,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.account_box,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 50,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Middle List View",
                    icon: Icon(
                      Icons.view_list,
                      color: Colors.black,
                    )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.view_list,
                  color: Colors.black,
                )),
              ),
              color: Colors.white,
              width: 50,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
