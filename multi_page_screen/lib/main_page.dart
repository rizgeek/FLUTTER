import 'package:flutter/material.dart';
import 'package:multi_page_screen/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HALAMAN UTAMA"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("GO TO SECOND PAGE"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            }),
      ),
    );
  }
}
