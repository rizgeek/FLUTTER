import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red[200],
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(bottom: 10, top: 10),
          child: Container(
            // decoration: BoxDecoration(color: Colors.blue[300]),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[
                    Colors.amber,
                    Colors.blue,
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
