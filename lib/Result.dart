import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resart;

  Result(this.score, this.resart);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "Congratulations!! You made it ^_^ ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 20, left: 50, right: 45),
            //color: Colors.lightBlue,
            child: Column(
              children: [
                Text(
                  'Your Score is : ${score}/8',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: FlatButton(
              child: Text(
                'Restart the quiz',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: resart,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}