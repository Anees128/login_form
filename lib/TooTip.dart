import 'package:flutter/material.dart';

class ToolTip12 extends StatefulWidget {
  @override
  _ToolTip12State createState() => _ToolTip12State();
}

class _ToolTip12State extends State<ToolTip12> {
  int _value = 50;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Tooltip(message: "message", child: Text("ToolTip")),
        ),
        body: Wrap(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                showDuration: Duration(seconds: 5),
                padding: EdgeInsets.all(10),
                height: 35,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey),
                message: "ToolTip",
                child: Icon(
                  Icons.account_box,
                  size: 120,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                showDuration: Duration(seconds: 7),
                waitDuration: Duration(seconds: 9),
                padding: EdgeInsets.all(10),
                height: 35,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.yellow[700]),
                message: "My Account",
                child: Icon(
                  Icons.account_box,
                  size: 120,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.volume_up,
                      color: Theme.of(context).accentColor,
                      size: 50,
                    ),
                    Expanded(
                        child: Slider(
                      value: _value.toDouble(),
                      min: 1.0,
                      max: 100.0,
                      divisions: 200,
                      activeColor: Colors.green[700],
                      inactiveColor: Colors.grey,
                      label: '$_value',
                      onChanged: (double newValue) {
                        setState(() {
                          _value = newValue.round();
                        });
                      },
                    )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
