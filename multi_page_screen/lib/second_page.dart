import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SECOND PAGE"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("KEMBALI"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
