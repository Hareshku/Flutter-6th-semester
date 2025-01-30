import 'package:chapter_5/screen_1.dart';
import 'package:chapter_5/screen_2.dart';
import 'package:chapter_5/screen_3.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Screen_1(),
      initialRoute: Screen_1.id,
      routes: {
        Screen_1.id:(context)=>Screen_1(),
        Screen_2.id:(context)=>Screen_2(),
        Screen_3.id: (context)=>Screen_3(),
      },
    );
  }
}
