
import 'package:flutter/material.dart';
import 'package:quiz_application/gauge.dart';

import 'package:quiz_application/questions.dart';
import 'package:quiz_application/rewward_points.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Color textColor = Colors.lightBlue;
  String answer = '';
  Color rightColor = Colors.white;
  Color wrongColor = Colors.white;
  int initialindex = 0;
  int pressbutton = -1;
  int points = 0;
  int value = 1;
  int newpoint = 20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Question${value}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${questions[initialindex]['question']}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: textColor)),
                    SizedBox(height:20),
                    _options(initialindex, 0),
                    SizedBox(height:20),
                    _options(initialindex, 1),
                    SizedBox(height:20),
                    _options(initialindex, 2),
                    SizedBox(height:20),
                    _options(initialindex, 3),
                    SizedBox(height:20),

                    ElevatedButton(onPressed: (){

                      setState(() {
                        if(
                        initialindex == questions.length -1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Reward_Points(points: points),)
                          );
                        }
                        else{

                          rightColor= Colors.white;
                          wrongColor= Colors.white;
                          answer = '';
                          initialindex = initialindex +1;
                          value = value+1;
                        }
                      });
                    }, child: Text('Next')),
                    SizedBox(height:20),
                    Container(
                        color: Colors.white,
                        child: Center(child: Text(answer,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: textColor)))),

                  ],
                ),
              ),
            ],),
        )
    );
  }
  Widget _options(int qsnindex,int index){

    Color containercolor = Colors.white;
    if(questions[qsnindex]['answer_index'] == index){
      containercolor= rightColor;
    }
    if(pressbutton==index){
      containercolor=wrongColor;

    }


    return InkWell(
        onTap: (){


          setState(() {
            if(questions[qsnindex]['answer_index']== index){
              answer='Right Answer';
              rightColor= Colors.green;
              wrongColor=Colors.white;
              points += newpoint;
            }
            else{
              pressbutton=index;
              answer='Wrong answer';
              rightColor= Colors.white;
              wrongColor= Colors.red;
              points = points - 5;

            }
          });

        },
        child: Container(
            width: MediaQuery.of(context).size.width*0.8,     height: MediaQuery.of(context).size.height*0.1,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: containercolor,

                border: Border.all(
                    width: 2.5,
                    color: Colors.blue.withOpacity(0.7))),
            child: Text('${questions[initialindex]['option'][index]}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: textColor))));
  }
}