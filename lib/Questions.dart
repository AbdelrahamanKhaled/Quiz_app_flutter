import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;

  Questions(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,),
        textAlign: TextAlign.center,
      ),
    );
  }
}
