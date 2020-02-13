import 'package:flutter/material.dart';

class TotalizingLine extends StatelessWidget {

  final String text;
  final String value;

  TotalizingLine(
      this.text,
      this.value
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(text),
        Text(value),
      ],
    );
  }
}
