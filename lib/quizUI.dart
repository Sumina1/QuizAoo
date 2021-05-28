import 'package:flutter/material.dart';
import 'package:quiz_application/homepage.dart';

int countquestion = 0;
class UI extends StatefulWidget {
  @override
  final String question;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final String rightanswer;

  const UI({Key key, this.question, this.option1, this.option2, this.option3, this.option4, this.rightanswer}) : super(key: key);
  _UIState createState() => _UIState();
}
String answerstate="";
class _UIState extends State<UI> {

  @override
  Widget build(BuildContext context) {
    int quescount = countquestion+1;
    String questioncount = "Question ${quescount}";
    if(quescount==0){
      questioncount="Final Question";
    }

    return Scaffold(
      appBar: AppBar(title: Center(child: Text("${questioncount}")),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),

          Text(""),

          Text("${widget.question}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Expanded(
            flex: 3,
            child: Column(

              children: [
                options("${widget.option1}","a) ${widget.option1}"),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                options("${widget.option2}","b) ${widget.option2}"),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                options("${widget.option3}","c) ${widget.option3}"),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                options("${widget.option4}","d) ${widget.option4}"),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1,),

                    ElevatedButton(onPressed: (){
                      answerstate="";
                      countquestion=countquestion+1;
                      if(countquestion==0){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homepage()));
                      }
                      else if(countquestion==1){
                        answerstate="";
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UI(question: "When was UG established?",option1: "2012",option2: "2013",option3: "2014",option4: "2015",rightanswer: "2012",)),
                        );}
                      else if(countquestion==2){
                        answerstate="";
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UI(question: "What is the full form of UG?",option1: "Urban Girl",option2: "Useful Grocery",option3: "Use-able Group",option4: "United Groups",rightanswer: "Urban Girl",)),);

                      }
                      else if(countquestion==3){
                        answerstate="";
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UI(question: "When was UG Cakes Registered?",option1: "2070",option2: "2072",option3: "2073",option4: "2074",rightanswer: "2074",)),);

                      }
                      else if(countquestion==4){
                        answerstate="";
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UI(question: "When did UG started Selling Cakes?",option1: "2010",option2: "2012",option3: "2015",option4: "2016",rightanswer: "2015",)),);

                      }
                      else if(countquestion==5){
                        answerstate="";
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UI(question: "When did UG launch UG bazar?",option1: "2010",option2: "2020",option3: "2012",option4: "2018",rightanswer: "2020",)),);

                        countquestion=-1;
                      }
                    }, child: Text("Next Question"))],),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text(answerstate,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              ],),

          ),






        ],
      ),
    );
  }


  Widget options(String option,String options){
    return InkWell(
      onTap: (){
        if(widget.rightanswer==option){
          print(option);
          setState(() {
            answerstate="Right Answer";
          });

        }
        else{
          setState(() {
            answerstate="Wrong Answer";
          });
        }

      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,     height: MediaQuery.of(context).size.height*0.1,

        //color: Colors.purple,
        alignment: Alignment.center,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.withOpacity(0.7)),
        ),

        child: Center(
          child: Text("${options}"),
        ),
      ),
    );

  }
}