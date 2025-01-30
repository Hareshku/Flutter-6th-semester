import 'package:flutter/material.dart';

class Rest_api extends StatefulWidget {
  const Rest_api({super.key});

  @override
  State<Rest_api> createState() => _Rest_apiState();
}

class _Rest_apiState extends State<Rest_api> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("REST API"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
