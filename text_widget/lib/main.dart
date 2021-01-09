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
          title: Text("TEXT WIDGET"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 250,
                height: 150,
                child: Center(
                  child: Text(
                    "Saya sedang belajar widget TEXT",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ))),
      ),
    );
  }
}
