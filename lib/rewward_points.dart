import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_application/homepage.dart';

class Reward_Points extends StatefulWidget {
  final points;

  const Reward_Points({Key key, this.points}) : super(key: key);

  @override
  _Reward_PointsState createState() => _Reward_PointsState();
}
class _Reward_PointsState extends State<Reward_Points> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(

            children: [
              Container(
                height: 50,
                width: 250,
                child: Text("Your reward point is ${widget.points} !!" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage(),)
                  );

                },
                child: Text('Try Again'),


              )
            ],
          ),
        ),
      ),
    );

  }
}
