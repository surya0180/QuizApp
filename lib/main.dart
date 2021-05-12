// import 'dart:html';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text("Quiz App")
				),
				body: Text('This is a basic quiz app devoloped by Surya teja'),
			),
		);
	}
}

void main() => runApp(MyApp());