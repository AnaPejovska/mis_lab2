import 'package:flutter/material.dart';
import './clothes_question.dart';
import './clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  void _iWasTapped(){
    setState(() {
      _questionIndex += 1; //da se zgolemi, i kje odi na sledno prasanje
    });
    print('I was tapped');
  }

  var questions = [
    {'question':'Select brand',
      'answer':['Mango', 'H&M', 'Zara'],},

    {'question':'Select gender',
      'answer':['Male', 'Female'],},

    {'question':'Select type',
      'answer':['T-shirts and Sweatshirts', 'Jeans',
        'Shorts and Skirts','Jackets'],},

    {'question':'Select size',
      'answer':['XS', 'S', 'M', 'L', 'XL'],},

    {'question':'Select color',
      'answer':['White', 'Black', 'Brown', 'Green', 'Grey'],},
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "MyApp",
        home: Scaffold(
          appBar: AppBar(
              title: Text("193052 Lab-2 Choosing clothes"),
              backgroundColor: Colors.green,
          ),
          body: Column(
            children: [
              ClothesQuestion(questions[_questionIndex]['question'] as String),
              ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
                return ClothesAnswer(_iWasTapped, answer);
              }),
            ],
          ),
        )
    );
  }
}