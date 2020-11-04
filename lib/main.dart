import 'package:flutter/material.dart';
import 'package:vsflutterapp/result.dart';
import './quiz.dart';

void main() => runApp(MaterialApp(
      home: Firstvs(),
));

class Firstvs extends StatefulWidget {
  @override
  _FirstvsState createState() => _FirstvsState();
}

class _FirstvsState extends State<Firstvs> {
  final questions = [
              {'questionText':'What\'s yo fav food?',
               'answer': [
                 {'text':'Chicken','score': 10},
                 {'text':'Eggs','score': 8}, 
                 {'text':'Paneer','score': 6}, 
                 {'text':'Burger','score': 3}
                 ]},

              {'questionText':'Which is yo fav animal?',
               'answer':  [
               {'text':'Peacock','score': 10},
               {'text':'Pig','score': 1},
               {'text':'Cat','score': 6},
               {'text':'Dog','score': 9}
               ],},

              {'questionText':'Which is your favourite color',
               'answer': [
                 {'text':'Black','score': 2},
                 {'text':'Green','score': 8},
                 {'text':'Orange','score': 4},
                 {'text':'Red','score': 6}
                 ]}
    ];

  var questionIndex= 0;
  var totalScore = 0;

  void resetQuiz(){
    setState(() {
      questionIndex =0;
      totalScore =0;
    });
  }

  void answerQuestion(int score){
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App')
      ),
      body: Container(
        child: questionIndex < questions.length?
        Quiz(answerQuestion: answerQuestion,questionIndex: questionIndex,questions: questions,) :
        Result(totalScore, resetQuiz)
        ),
      
    );
  }
}