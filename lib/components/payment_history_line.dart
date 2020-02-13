import 'package:flutter/material.dart';
import 'package:formatura_abc/common/constants.dart';

class PaymentHistoryLine extends StatelessWidget {

  final int status;
  final String date;
  final String value;

  PaymentHistoryLine(
      this.status,
      this.date,
      this.value
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.book, color: getColor(status)),
        Text(date),
        Text(value),
      ],
    );
  }

  Color getColor(int status) {
    return (status == EXPIRING_AMOUNT?Colors.grey:status == EXPIRED_AMOUNT?Colors.red:Colors.green);
  }
}
