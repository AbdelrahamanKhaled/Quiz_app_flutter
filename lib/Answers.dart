import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function func_pointer;
  final String AnswerText;

  Answers(this.func_pointer, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrangeAccent,
        child: Text(
          AnswerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: func_pointer,
      ),
    );
  }
}
