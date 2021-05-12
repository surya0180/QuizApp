import 'package:flutter/material.dart';

class Option extends StatelessWidget {

  final Function selectHandler;
  final String option;
  Option(this.selectHandler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
				child: Text(option), 
				onPressed: selectHandler,
			),
    );
  }
}