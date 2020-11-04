import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final  int questionIndex;

  Quiz({this.answerQuestion,this.questions,this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            //... spread operator is to seprate the values of list and get as individual
            //map is used to iterate every element in the list
            ...(questions[questionIndex]['answer']as List<Map<String, Object>>).map((answer){
              return Answer(()=>answerQuestion(answer['score']) ,answer['text']);
            }).toList()
          ],
        );
  }
}