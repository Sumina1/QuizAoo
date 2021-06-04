import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_application/gauge.dart';
import 'package:quiz_application/homepage.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
              Gauge(value: widget.points, annotation: 'Total score is: ', pointerColor: Colors.green,),

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
