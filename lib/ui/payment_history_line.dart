import 'package:flutter/material.dart';
import 'package:formatura_abc/core/models/quota.dart';

class PaymentHistoryLine extends StatelessWidget {

  final Quota quota;

  PaymentHistoryLine(
      this.quota,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.black38,
            )
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              getIcon(quota.status),
              Text(quota.date.toString()),
            ],
          ),
          Text(quota.value.toString()),
        ],
      ),
    );
  }

  Icon getIcon(QuotaListStatus status) {
    Icon icon;
    if (status == QuotaListStatus.quotaPaid) {
      icon = Icon(Icons.check_circle, color: Colors.green);
    } else if (status == QuotaListStatus.quotaOverdue) {
      icon = Icon(Icons.remove_circle, color: Colors.red);
    } else {
        icon = Icon(Icons.remove_circle_outline, color: Colors.grey);
    }
    return icon;
  }
}
