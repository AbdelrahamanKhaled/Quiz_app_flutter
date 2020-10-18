import 'package:flutter/cupertino.dart';
import "./Questions.dart";
import "./Answers.dart";

class Quiz extends StatelessWidget{
  final Function func_pointer;
  final int index;
  final questions;

  Quiz(this.func_pointer, this.questions, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[index]['question']),
        ...(questions[index]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answers(() =>func_pointer(answer['flag']), answer['text']);
        }).toList()
      ],
    );
  }

}