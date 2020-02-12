import 'package:flutter/material.dart';

class ViewPaymentInformation extends StatefulWidget {

  ViewPaymentInformation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ViewPaymentInformation createState() => _ViewPaymentInformation();
}

class _ViewPaymentInformation extends State<ViewPaymentInformation> {

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black38),
                  borderRadius: const BorderRadius.all(const Radius.circular(8))
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Total:'),
                        Text('RS 5.000,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('A pagar:'),
                        Text('RS 2.800,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Pago:'),
                        Text('RS 2.000,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Pendente:'),
                        Text('RS 200,00'),
                      ],
                    ),
                  ],
                )
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black38),
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.green,),
                        Text('02/02/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.green,),
                        Text('02/03/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.green,),
                        Text('02/04/2019'),
                        Text('RS 350,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.green,),
                        Text('02/05/2019'),
                        Text('RS 650,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.red,),
                        Text('02/06/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.grey,),
                        Text('02/07/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.grey,),
                        Text('02/08/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.grey,),
                        Text('02/09/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.grey,),
                        Text('02/10/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.book, color: Colors.grey,),
                        Text('02/11/2019'),
                        Text('RS 500,00'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
       // onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
