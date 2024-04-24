// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController mycontroller= TextEditingController();
  String s="";
  void greetUser(){
    setState(() {
      s="hello,"+mycontroller.text;
    });
    print(mycontroller.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(s),
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "type your name.....",
              ),
            ),
            ElevatedButton(onPressed: greetUser,
             child: Text("Tap"))
          ],
        ),
      ),
    ),  
    );
    
  }
}