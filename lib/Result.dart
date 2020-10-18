import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resart;

  Result(this.score, this.resart);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        "Congratulations!! You made it Your Score is ${score}",
        style: TextStyle(color: Colors.lightBlue, fontSize: 30),
        textAlign: TextAlign.center,
      ),
      FlatButton(child: Text('Restart the quiz' , style: TextStyle(color: Colors.white),), onPressed: resart , color: Colors.lightBlue)
    ]));
    // return Container(
    //   width: double.infinity,
    //   height: 300,
    //   color: Colors.teal,
    //   child: Text(
    //     "Your Score is ${score}",
    //     style: TextStyle(
    //       color: Colors.white,
    //       fontSize: 30,
    //       fontWeight: FontWeight.bold,
    //     ),
    //     textAlign: TextAlign.center,
    //   ),
    // );
  }
}
