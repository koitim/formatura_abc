
import 'package:flutter/material.dart';
import 'package:formatura_abc/ui/app_tab.dart';
import 'package:formatura_abc/ui/quota_list.dart';

class Home extends StatefulWidget {
  const Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  AppTab _selectedTab = AppTab.finances;

  void _onTapSelectTab(int index) {
    setState(() {
      _selectedTab = AppTab.values[index];

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formatura do ABC'),
      ),
      body: _defineScreen(_selectedTab),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: 'informar pagamento',
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab.index,
        onTap: _onTapSelectTab,
        items: AppTab.values.map((tab) {
          return _defineItemBar(tab);
        }).toList(),
      ),
    );
  }

  BottomNavigationBarItem _defineItemBar(AppTab tab) {
    return BottomNavigationBarItem(
      icon: _defineIcon(tab),
      title: _defineTitle(tab),
    );
  }

  Icon _defineIcon(AppTab tab) {
    switch (tab) {
      case AppTab.finances:
        return Icon(Icons.monetization_on);
      default:
        return Icon(Icons.show_chart);
    }
  }

  Text _defineTitle(AppTab tab) {
    switch (tab) {
      case AppTab.finances:
        return Text('Finanças');
      default:
        return Text('Temp');
    }
  }

  Widget _defineScreen(AppTab tab) {
    switch (tab) {
      case AppTab.finances:
        return QuotaList();
      default:
        return Text('Ainda não implementado');
    }
  }
}
