import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;

class Packages extends StatefulWidget {
  const Packages({super.key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pakages"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            // ReadMoreText("Lorem Ipsum is a type of placeholder text commonly used in the printing and web or graphic design industries. It's a pseudo-Latin text that has no meaningful content, which makes it ideal for filling in the space where the final text will eventually go in a design layout. The primary purpose of lorem ipsum is to demonstrate the visual elements of a document or design. Such as font, typography, and layout, without distracting the viewer with actual readable text.", trimLines: 2, trimMode: TrimMode.Line, trimExpandedText: "", trimCollapsedText: "SHOW LESS",),
            badges.Badge(
              badgeContent: Text("3"),
              child: Icon(Icons.notification_add),
              badgeAnimation: badges.BadgeAnimation.fade(
                animationDuration: Duration(seconds: 2),

              ),
            ),

            //Animated Text Kit Packages
            //Pin Code Field Widget
          ],
        ),
      ),
    );
  }
}
