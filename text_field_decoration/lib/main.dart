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
          title: Text("Latihan Text Field Decoration"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                //decoration: InputDecoration(border: InputBorder.none),
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.supervised_user_circle),
                  //prefixText: "Masukan Data",
                  //prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w300),
                  labelText: "Nama",
                  hintText: "MASUKAN NAMA LENGKAP",
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                controller: kontrol,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Text(kontrol.text)
          ],
        ),
      ),
    );
  }
}
