import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase{
    var resultText = "You got here!!";
    if (resultScore <= 12)
    {
      resultText = "Oh mai gaawd";
    } else if(resultScore <= 8){
      resultText = "Hey there!";
    }
    else{
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36, 
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz, 
            child: Text("Restart?"),
            textColor: Colors.blue,
          )
        ],
      ), 
    );
  }
}