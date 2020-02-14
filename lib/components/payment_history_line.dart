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
        getIcon(status),
        Text(date),
        Text(value),
      ],
    );
  }

  Icon getIcon(int status) {
    Icon icon;
    switch (status) {
      case AMOUNT_PAID:
        icon = Icon(Icons.check_box, color: Colors.green);
        break;
      case EXPIRED_AMOUNT:
        icon = Icon(Icons.check_box, color: Colors.red);
        break;
      default:
        icon = Icon(Icons.check_box_outline_blank, color: Colors.grey);
        break;
    }
    return icon;
  }

  Color getColor(int status) {
    return (status == EXPIRING_AMOUNT?Colors.grey:status == EXPIRED_AMOUNT?Colors.red:Colors.green);
  }
}
