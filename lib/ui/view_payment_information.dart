
/*
class ViewPaymentInformation extends StatefulWidget {

  final void Function() onInit;

  ViewPaymentInformation({@required this.onInit}) : super(key: FormaturaABCKeys.homeScreen);
  //ViewPaymentInformation({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _ViewPaymentInformationState createState() => _ViewPaymentInformationState();
}

class _ViewPaymentInformationState extends State<ViewPaymentInformation> {

  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ActiveTab(
      builder: (BuildContext context, AppTab activeTab) {
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
                child: Text(FormaturaABCLocalizations.of(context).appTitle),
              ),
            ],
          ),
            /*actions: [
              FilterSelector(visible: activeTab == AppTab.todos),
              ExtraActionsContainer(),
            ],*/
        ),
          body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultTextStyle(style: descTextStyle, child: Center(
            child: ListView(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black38),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(8))
                    ),
                    child: Column(
                      children: <Widget>[
                        TotalizingLine('Total:', 'RS 5.000,00', Colors.black),
                        TotalizingLine('A pagar:', 'RS 2.800,00', Colors.red),
                        TotalizingLine('Pago:', 'RS 2.000,00', Colors.green),
                        TotalizingLine(
                            'A confirmar:', 'RS 200,00', Colors.orange),
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black38),
                      borderRadius: const BorderRadius.all(
                          const Radius.circular(8))
                  ),
                  child: Column(
                    children: <Widget>[
                      PaymentHistoryLine(
                          PAYMENT_PAID, '02/02/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_PAID, '02/03/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_PAID, '02/04/2019', 'RS 350,00'),
                      PaymentHistoryLine(
                          PAYMENT_PAID, '02/05/2019', 'RS 650,00'),
                      PaymentHistoryLine(
                          OVERDUE_PAYMENT, '02/06/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_DUE, '02/07/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_DUE, '02/08/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_DUE, '02/09/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_DUE, '02/10/2019', 'RS 500,00'),
                      PaymentHistoryLine(
                          PAYMENT_DUE, '02/11/2019', 'RS 500,00'),
                    ],
                  ),
                ),
              ],
            ),
          ),),
        ),
          bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money), title: Text('Financeiro')),
            BottomNavigationBarItem(
                icon: Icon(Icons.payment), title: Text('Gastos')),
            BottomNavigationBarItem(icon: Icon(Icons.signal_wifi_4_bar_lock),
                title: Text('Votações')),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
          floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        );
      },
    );
  }

  int _selectedIndex = 0;

  final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
*/