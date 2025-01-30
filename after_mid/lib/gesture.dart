import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double scaleFactor = 1.0;
  // offset
  Offset offset = const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title:
          const Text("Gesture Demo", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
          leading: const Icon(Icons.menu, color: Colors.white),
        ),
        body: Center(
          child: GestureDetector(
              onPanUpdate: (details) => setState(() {
                offset = Offset(
                  offset.dx + details.delta.dx,
                  offset.dy + details.delta.dy,
                );
              }),
              child: Transform.translate(
                offset: offset,
                child: Container(
                  width: 300 * scaleFactor,
                  height: 300 * scaleFactor,
                  color: Colors.amber,
                ),
              )),
        ));
  }
}