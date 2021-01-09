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
          title: Text("Latihan Image"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              width: 300,
              height: 300,
              padding: EdgeInsets.all(3),
              child: Image(
                image: NetworkImage(
                    "https://w7.pngwing.com/pngs/646/369/png-transparent-pain-naruto-uzumaki-konan-kisame-hoshigaki-akatsuki-chibi-chibi-human-fictional-character.png"),
                fit: BoxFit.fill,
              ),
            ),

            Container(
            color: Colors.black,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("images/gambar.png")
            ),
          ),
          ],
        )),
      ),
    );
  }
}
