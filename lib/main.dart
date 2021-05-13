// import 'dart:html';

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {

        return _MyAppState();
    }
}

class _MyAppState extends State <MyApp> {
    final _questions = const [
        {
            'questionText': 'What\'s your favorite anime ?', 
            'options': [
                {'Text': 'Bleach', 'Score': 4},
                {'Text': 'Naruto', 'Score': 2},
                {'Text': 'One Punch Man', 'Score': 3}, 
                {'Text': 'Attack on Titan', 'Score': 1}
              ]
        },
        {
            'questionText': 'What\'s your favorite charachter ?', 
            'options': [
                {'Text': 'Naruto', 'Score': 4}, 
                {'Text': 'Ichigo', 'Score': 1},
                {'Text': 'Saitama', 'Score': 2},
                {'Text': 'Eren yeager', 'Score': 3}
            ]
        },
        {
            'questionText': 'Which genre below you watch the most ?', 
            'options': [
                {'Text': 'Shonen', 'Score': 3},
                {'Text': 'Isekai', 'Score': 4},
                {'Text': 'Action', 'Score': 1}, 
                {'Text': 'Comedy', 'Score': 2},
            ]
        },
        {
            'questionText': 'Do you follow any weeb accounts on social media ?', 
            'options': [
                {'Text': 'Yes', 'Score': 4}, 
                {'Text': 'No', 'Score': 1}
            ]
        },
    ];
	var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

	void _answerQuestion(int score){

        _totalScore += score;
        setState(() {
		    _questionIndex = _questionIndex + 1;
        });
		print(_questionIndex);
        if(_questionIndex < _questions.length) {
            print("Good job!! Now to the next question");
            return;
        }
        else {
            print("No more questions");
        }
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				  appBar: AppBar(
					title: Text("Quiz App")
				),
			body: _questionIndex < _questions.length ? 
        Quiz(
          answerQuestion: _answerQuestion, 
          questions: _questions, 
          questionIndex: _questionIndex
        )
        : Result(_totalScore, _resetQuiz),
			),
		);
	}
}

void main() => runApp(MyApp());