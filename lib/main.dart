// import 'dart:html';

import 'package:flutter/material.dart';
import './question.dart';
import './options.dart';

class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {

        return _MyAppState();
    }
}

class _MyAppState extends State <MyApp> {
    final questions = const [
        {
            'questionText': 'What\'s your favorite anime ?', 
            'options': [
                'Bleach', 
                'Naruto', 
                'One Punch Man', 
                'Attack on Titan'
            ]
        },
        {
            'questionText': 'What\'s your favorite charachter ?', 
            'options': [
                'Naruto', 
                'Ichigo', 
                'Saitama', 
                'Eren yeager'
            ]
        },
        {
            'questionText': 'Which genre below you watch the most ?', 
            'options': [
                'Shonen', 
                'Isekai', 
                'Action', 
                'Comedy'
            ]
        },
        {
            'questionText': 'Do you follow any weeb accounts on social media ?', 
            'options': [
                'Yes', 
                'No'
            ]
        },
    ];
	var _questionIndex = 0;

	void _answerQuestion(){
        setState(() {
		    _questionIndex = _questionIndex + 1;
        });
		print(_questionIndex);
        if(_questionIndex < questions.length) {
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
				body: _questionIndex < questions.length ? Column(
          			children: [
						  	Question(
                                  questions[_questionIndex]['questionText']
                                ),
                            ...(questions[_questionIndex]['options'] as List<String>).map((option) {
                                return Option(_answerQuestion, option);
                            }).toList()
					  	],
        		) : Center(
                    child: Text("Yes!!, You are now an official weeb"), 
                ),
			),
		);
	}
}

void main() => runApp(MyApp());