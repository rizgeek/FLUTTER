import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController kontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [inputanText(), Text(kontrol.text)],
        ),
      ),
    );
  }

  Container inputanText() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: kontrol,
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }
}
