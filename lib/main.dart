import 'package:flutter/material.dart';
import 'package:formatura_abc/screens/view_payment_information.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewPaymentInformation(title: 'Formatura ABC'),
    );
  }
}
