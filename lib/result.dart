import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore,this.resetHandler){
  print(totalScore);
  }
  String get resultPhrase {
    String resultText;
    if(totalScore< 12){
      resultText = 'You are strange and unlikable';
    }
    else if (totalScore>=12 && totalScore<16){
      resultText = 'Pretty likable';
    }
    else if (totalScore>=16){
      resultText ='You are awesome and innocent!';
    }
    else{
      resultText ='You are bad ';
    }
  
    return resultText;

  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ) ,
    textAlign: TextAlign.center,
    ),
    FlatButton(
      child: Text('Reset'),
      onPressed: resetHandler,)
        ],
      )
    );
  }
}