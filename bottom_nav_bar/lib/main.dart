import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=0;
  void _onTap(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: const Column(
          children: [
            Center(
              child: Text('Bottom Nav Bar'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: 'Post',
            ),
          ],

          currentIndex: _currentIndex,

          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: _onTap,
          backgroundColor: Colors.deepPurple.shade300,
        ),


      ),
    );
  }
}
