import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Spacer Data"),),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(flex: 1,),
              Container(height: 80, width: 80, color: Colors.red,),
              Spacer(flex: 2,),
              Container(height: 80, width: 80, color: Colors.green,),
              Spacer(flex: 5,),
              Container(height: 80, width: 80, color: Colors.blue,),
              Spacer(flex: 1,)
            ],
          ),
        ),
      ),
    );
  }
}