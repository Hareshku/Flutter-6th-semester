import 'package:calculator/MyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var userInput='';
  var answer='';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       title: Text("Calculator App"),
       centerTitle: true,
       backgroundColor: Colors.deepPurple,
     ),
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: Column(
           children: [
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: Column(
                   children: [
                    Text(userInput.toString(), style: TextStyle(fontSize: 30, color: Colors.white,),),
                     Text(answer.toString(), style: TextStyle(fontSize: 30, color: Colors.white)),
                   ],
                 ),
               ),
             ),
             Expanded(
               flex: 2,
               child: Column(
                 children: [
                   Row(
                     children: [
                       MyButton(title: "AC",onPress: (){
                         userInput='';
                         answer= '';
                         setState(() {
               
                         });
                       },),
                       MyButton(title: "+/-",onPress: (){
                         userInput+='+/-';
                         setState(() {

                         });
                       }),
                       MyButton(title: "%",onPress: (){
                         userInput+='%';
                         setState(() {

                         });
                       }),
                       MyButton(title: "/", color: Color(0xffffa00a),onPress: (){
                         userInput+='/';
                         setState(() {

                         });
                       }),
                     ],
                   ),
                   Row(
                     children: [
                       MyButton(title: "7",onPress: (){
                         userInput+="7";
                         setState(() {

                         });
                       },),
                       MyButton(title: "8",onPress: (){
                         userInput+='8';
                         setState(() {

                         });
                       }),
                       MyButton(title: "9",onPress: (){
                         userInput+='9';
                         setState(() {

                         });
                       }),
                       MyButton(title: "x", color: Color(0xffffa00a),onPress: (){
                         userInput+='x';
                         setState(() {

                         });
                       }),
                     ],
                   ),
                   Row(
                     children: [
                       MyButton(title: "4",onPress: (){
                         userInput+='4';
                         setState(() {

                         });
                       },),
                       MyButton(title: "5",onPress: (){
                         userInput+='5';
                         setState(() {

                         });
                       }),
                       MyButton(title: "6",onPress: (){
                         userInput+='6';
                         setState(() {

                         });
                       }),
                       MyButton(title: "-", color: Color(0xffffa00a),onPress: (){
                         userInput+='-';
                         setState(() {

                         });
                       }),
                     ],
                   ),
                   Row(
                     children: [
                       MyButton(title: "1",onPress: (){
                         userInput+='1';
                         setState(() {

                         });
                       },),
                       MyButton(title: "2",onPress: (){
                         userInput+='2';
                         setState(() {

                         });
                       }),
                       MyButton(title: "3",onPress: (){
                         userInput+='3';
                         setState(() {

                         });
                       }),
                       MyButton(title: "+", color: Color(0xffffa00a),onPress: (){
                         userInput+='+';
                         setState(() {

                         });
                       }),
                     ],
                   ),
                   Row(
                     children: [
                       MyButton(title: "0",onPress: (){
                         userInput+='0';
                         setState(() {

                         });
                       },),
                       MyButton(title: ".",onPress: (){
                         userInput+='.';
                         setState(() {

                         });
                       }),
                       MyButton(title: "DEL",onPress: (){
                         userInput=userInput.substring(0, userInput.length-1);
                         setState(() {

                         });
                       }),
                       MyButton(title: "=", color: Color(0xffffa00a),onPress: (){
                         evaluate();
                         setState(() {

                         });
                       }),
                     ],
                   ),
                 ],
               ),
             ),
            SizedBox(height: 10,),
           ],
         ),
       ),
     ),
   );
  }

  void evaluate(){
    var finalInput=userInput;
    finalInput= userInput.replaceAll("x", "*");
    Parser p= Parser();
    Expression expression =p.parse(finalInput);
    ContextModel contextModel= ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    answer=eval.toString();
  }
}
