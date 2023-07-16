import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget{
  String answerText;
  final VoidCallback  tapped;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // background
      ),
      child: Text(
        answerText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: tapped,
    );
  }

}