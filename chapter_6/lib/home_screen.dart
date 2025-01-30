import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:4,
        child:Scaffold(
          appBar: AppBar(
            title:const Text("WhatsApp"),
            backgroundColor: Colors.teal,
            bottom:const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Updates"),
                ),
                Tab(
                  child: Text("Call"),
                ),
              ],
            ),

            actions: [
             const Icon(Icons.search),
             const SizedBox(width: 10,),
              PopupMenuButton(
                icon:const Icon(Icons.more_vert_outlined),
                itemBuilder: (context)=> const [
                  PopupMenuItem(
                    child: Text("Groups"),
                  ),
                  PopupMenuItem(
                    child: Text("Groups"),
                  ),
                  PopupMenuItem(
                    child: Text("Groups"),
                  )

              ],
              ),
              const SizedBox(width: 10,),
            ],
          ),
          body:TabBarView(
            children: [
              Text("Camera"),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                    ),
                    title: Text("Haresh"),
                    subtitle: Text("Learn Flutter"),
                    trailing: Text("3 : 40"),
                  );

              },),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        )
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                      ),
                    ),
                    title: Text("Haresh"),
                    subtitle: Text("Learn Flutter"),
                    trailing: Text("3 : 40"),
                  );

                },),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                    ),
                    title: Text("Haresh"),
                    subtitle: Text(index/2==0?"You missed audio call 3:20 pm": "You Missed video call 4: 50 am"),
                    trailing:Icon(index/2==0?Icons.phone:Icons.video_call) ,
                  );

                },),
            ],
          ),
        ),
    );
  }
}
