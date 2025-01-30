
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
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
      home: Scaffold(
        appBar: AppBar(
          title:const Text('AppBar'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      // radius: 100,
                      backgroundColor: Colors.black,
                      backgroundImage:NetworkImage('https://th.bing.com/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),),
                    title: Text("Title Here"),
                    subtitle: Text("Subtitle Here"),
                    trailing: Text("3 : 50 AM"),
                  );
              },
              
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//  Divider widget and Circular avatar
// const  Divider(color: Colors.black, thickness: 1,),
// const SizedBox(
// height: 100,
// child:VerticalDivider(color: Colors.black, thickness: 1,),
// ),
// const Divider(color: Colors.black, thickness: 1,),
//
// const Center(
// child: CircleAvatar(
// radius: 100,
// backgroundColor: Colors.black,
// backgroundImage:NetworkImage('https://th.bing.com/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Center(
// child: TextFormField(
// decoration: InputDecoration(
// prefixIcon: const Icon(Icons.email),
// // prefixStyle:Colors.red ,
// hintText: 'Email',
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10),
// borderSide: const BorderSide(color: Colors.red),
//
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: const BorderSide(color: Colors.green),
// borderRadius: BorderRadius.circular(15),
// )
// ),
//
// ),
// ),
// ),



//  RichText Widget
// Center(
// child: RichText(
// text: TextSpan(
// text: "Don't have an account?",
// style: Theme.of(context).textTheme.bodyMedium,
// children: [
// TextSpan(
// text: 'Sign Up',
// style: TextStyle(fontSize: 18, fontFamily:AutofillHints.streetAddressLevel1, color: Colors.redAccent)
// )
// ],
// ),
// ),
// ),

 // Expanded widget , Container widget,
// Expanded(
//   flex: 3,
//   child: Center(
//     child: Container(
//       height: 300,
//       width: 200,
//       // transform: Matrix4.rotationZ(.1),
//       decoration: BoxDecoration(
//           color: Colors.orange,
//           borderRadius:BorderRadius.circular(10),
//           // only(
//           // topRight:Radius.circular(50),
//           // topLeft: Radius.circular(50),
//           // bottomLeft: Radius.circular(50),
//           // bottomRight: Radius.circular(50),
//           // ),
//           border: Border.all(
//             color: Colors.black,
//             width: 2,
//           ),
//
//           // boxShadow: const [
//           //   BoxShadow(
//           //     color: Colors.red,
//           //     blurRadius: 30,
//           //   )
//           // ]
//           image:const DecorationImage(
//             image: NetworkImage('https://th.bing.com/th/id/OIGP.90plJIRWoTQ1wngkWXnL?w=270&h=270&c=6&r=0&o=5&dpr=1.5&pid=ImgGn'),
//             fit:BoxFit.fitWidth,
//             alignment: Alignment.center,
//           )
//       ),
//
//       child:const Center(
//         child: Text("container"),
//       ),
//     ),
//   ),
// ),
// Expanded(
//   child: Center(
//     child: Container(
//       child: Center(
//         child: Center(
//           child: Text('Container 2'),
//         ),
//       ),
//       width: 200,
//       color: Colors.red,
//     ),
//   ),
// ),