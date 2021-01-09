import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void hitugNilai() {
    setState(() {
      number++;
    });
  }

  void resetNilai() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("STATEFULL WIDGET"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(),style: TextStyle(fontSize: 20+number.toDouble()),),
              RaisedButton(
                child: Text("TEKAN TOMBOL"),
                onPressed: hitugNilai,
              ), //tombol hitung
              RaisedButton(
                onPressed: resetNilai,
                child: Text("RESET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
