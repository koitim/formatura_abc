import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:formatura_abc/core/redux/_common/common_actions.dart';
import 'package:formatura_abc/core/redux/app/app_state.dart';
import 'package:formatura_abc/ui/home.dart';
import 'package:redux/redux.dart';

class ABCGraduationApp extends StatefulWidget {

  final Store<AppState> store;

  const ABCGraduationApp(this.store);

  @override
  _ABCGraduationAppState createState() => _ABCGraduationAppState();
}

class _ABCGraduationAppState extends State<ABCGraduationApp> {

  @override
  void initState() {
    super.initState();
    widget.store.dispatch(InitAction());
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        title: 'Formatura do ABC',
        home: const Home(),
      ),
    );
  }
}
