import 'package:flutter/material.dart';
import 'package:formatura_abc/app.dart';
import 'package:formatura_abc/core/redux/store.dart';

void main() => runApp(
      ABCGraduationApp(
        createStore(),
      ),
    );
