import 'package:chapter_5/screen_3.dart';
import 'package:flutter/material.dart';

class Screen_2 extends StatefulWidget {
  static const String id= "Screen_2";
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: TextButton(child: Text("This is screen 2"), onPressed: (){
               Navigator.pushNamed(context, Screen_3.id);
              },),
            ),
          ],
        ),
      ),
    );
  }
}
