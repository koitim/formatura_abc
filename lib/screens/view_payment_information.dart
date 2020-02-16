import 'package:flutter/material.dart';
import 'package:formatura_abc/common/constants.dart';
import 'package:formatura_abc/components/payment_history_line.dart';
import 'package:formatura_abc/components/totalizing_line.dart';

class ViewPaymentInformation extends StatefulWidget {

  ViewPaymentInformation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ViewPaymentInformation createState() => _ViewPaymentInformation();
}

class _ViewPaymentInformation extends State<ViewPaymentInformation> {

  final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.black,
            ),
            Container(
                padding: EdgeInsets.all(10),
                child:Text(widget.title),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultTextStyle(style: descTextStyle, child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8))
                  ),
                  child: Column(
                    children: <Widget>[
                      TotalizingLine('Total:', 'RS 5.000,00', Colors.black),
                      TotalizingLine('A pagar:', 'RS 2.800,00', Colors.red),
                      TotalizingLine('Pago:', 'RS 2.000,00', Colors.green),
                      TotalizingLine('A confirmar:', 'RS 200,00', Colors.orange),
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black38),
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                ),
                child: Column(
                  children: <Widget>[
                    PaymentHistoryLine(AMOUNT_PAID, '02/02/2019', 'RS 500,00'),
                    PaymentHistoryLine(AMOUNT_PAID, '02/03/2019', 'RS 500,00'),
                    PaymentHistoryLine(AMOUNT_PAID, '02/04/2019', 'RS 350,00'),
                    PaymentHistoryLine(AMOUNT_PAID, '02/05/2019', 'RS 650,00'),
                    PaymentHistoryLine(EXPIRED_AMOUNT, '02/06/2019', 'RS 500,00'),
                    PaymentHistoryLine(EXPIRING_AMOUNT, '02/07/2019', 'RS 500,00'),
                    PaymentHistoryLine(EXPIRING_AMOUNT, '02/08/2019', 'RS 500,00'),
                    PaymentHistoryLine(EXPIRING_AMOUNT, '02/09/2019', 'RS 500,00'),
                    PaymentHistoryLine(EXPIRING_AMOUNT, '02/10/2019', 'RS 500,00'),
                    PaymentHistoryLine(EXPIRING_AMOUNT, '02/11/2019', 'RS 500,00'),
                  ],
                ),
              ),
            ],
          ),
        ),),
      ),
      floatingActionButton: FloatingActionButton(
       // onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
