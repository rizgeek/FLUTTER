import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color color3 = Colors.black26;

  Color targetColor;
  bool jikaSudah = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan DragAble"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color1,
                        elevation: 3,
                        shape: StadiumBorder(),
                      )),
                  feedback: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color1.withOpacity(0.7),
                        shape: StadiumBorder(),
                      )),
                  childWhenDragging: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color3,
                        shape: StadiumBorder(),
                      )),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color2,
                        elevation: 3,
                        shape: StadiumBorder(),
                      )),
                  feedback: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color2.withOpacity(0.7),
                        shape: StadiumBorder(),
                      )),
                  childWhenDragging: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color3,
                        shape: StadiumBorder(),
                      )),
                ),
                Draggable<Color>(
                  data: color3,
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color3,
                        elevation: 3,
                        shape: StadiumBorder(),
                      )),
                  feedback: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color3.withOpacity(0.7),
                        shape: StadiumBorder(),
                      )),
                  childWhenDragging: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        color: color3,
                        shape: StadiumBorder(),
                      )),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                jikaSudah = true;
                targetColor = value;
              },
              builder: (context, cadidates, rejected) {
                return (jikaSudah)
                    ? SizedBox(
                        height: 200,
                        width: 200,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ))
                    : SizedBox(
                        height: 200,
                        width: 200,
                        child: Material(
                          color: color3,
                          shape: StadiumBorder(),
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
