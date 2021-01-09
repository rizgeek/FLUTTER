import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: ListView(
          children: [
            menuCard("Menu 1", Icons.accessible),
            menuCard("Menu 2", Icons.access_alarm),
            menuCard("Menu 3", Icons.add_comment)
          ],
        ),
      ),
    );
  }

  Card menuCard(String judul, IconData icon) {
    return Card(
      elevation: 10,
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Icon(
                icon,
                size: 30,
                color: Colors.green,
              )),
          Text(judul, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
