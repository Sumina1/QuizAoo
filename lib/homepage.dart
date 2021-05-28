import 'package:flutter/material.dart';
import 'package:quiz_application/quizUI.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UI(question: "Who were the Co_founders of UG?",option1: "Kiran Timsina and Nikita Acharya",option2: "Sankar Bhattrai and Nikita Acharya",option3: "Kiran Timsina and Kabir Khatiwada",option4: "Nikata Acharya and Hari Timsina",rightanswer: "Kiran Timsina and Nikita Acharya",)),);

          },

          child: Text("Tap to Start Quiz")),
    );
  }
}