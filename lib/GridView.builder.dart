import 'package:flutter/material.dart';

class GridView_biulder extends StatefulWidget {
  @override
  _GridView_biulderState createState() => _GridView_biulderState();
}

class _GridView_biulderState extends State<GridView_biulder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("GridView.builder"),
        ),
        backgroundColor: Colors.white,
        body: Card(
            color: Colors.yellow,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 50,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    trailing: Image(
                      image: AssetImage(
                        'Images/Location.png',
                      ),
                      height: 190,
                    ),
                    title: Text('no $index'),
                  ),
                );
              },
            )),
      ),
    );
  }
}
