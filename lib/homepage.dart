import 'package:flutter/material.dart';
import 'package:quiz_application/quizUI.dart';
import 'package:quiz_application/quizUI.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.teal,
      child: ElevatedButton(

          onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Quiz()),);
          },
          child: Text("Start Quiz")),
    );
  }
}