import 'package:flutter/material.dart';

class TotalizingLine extends StatelessWidget {

  final String text;
  final String value;
  final Color colorValue;

  TotalizingLine(
      this.text,
      this.value,
      this.colorValue,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(text),
        Text(value,style: TextStyle(color: colorValue),),
      ],
    );
  }
}
