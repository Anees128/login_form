import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'List_view.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formkey = GlobalKey<FormState>();
  var name;
  var password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Center(
            child: Text("Login Form"),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => List_view(),
                  ),
                );
              },
              icon: Icon(Icons.forward),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Form(
            key: _formkey,
            child: ListView(
              children: <Widget>[
                Image(
                  image: AssetImage(
                    "Images/Google.gif",
                  ),
                  width: 200.0,
                  height: 270.0,
                ),
                Container(
                  width: 350.0,
                  height: 250.0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "User Name is Required";
                          } else {
                            setState(() {
                              name = value;
                            });
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Username",
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Password is required";
                          } else {
                            setState(() {
                              password = value;
                            });
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Password",
                          icon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(
                            color: Colors.green,
                            onPressed: () {
                              setState(() {
                                if (_formkey.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => secondscreen(
                                        name1: name,
                                        password1: password,
                                      ),
                                    ),
                                  );
                                }
                              });
                            },
                            child: Text("Submitted"),
                          ),
                          RaisedButton(
                            color: Colors.redAccent,
                            onPressed: () {},
                            child: Text(
                              "Clear",
                            ),
                          ),
                        ],
                      ),
                    ],
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
      ),
    );
  }
}
