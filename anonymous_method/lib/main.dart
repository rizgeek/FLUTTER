import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String pesan = "PESAN INI BELUM DITEKAN ANONYMOUSE METHOD";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("anonymouse method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pesan),
              RaisedButton(onPressed: (){
                setState(() {
                  pesan = "METHOD ANONYMOUSE TELAH DI JALANKAN";
                });
              },child: Text("ANONYMOUSE METHOD")),
              RaisedButton(onPressed: (){
                setState(() {
                  pesan = "PESAN INI BELUM DITEKAN ANONYMOUSE METHOD";
                });
              }, child: Text("RESET"),)
            ],
          ),
        ),
      ),
    );
  }
}