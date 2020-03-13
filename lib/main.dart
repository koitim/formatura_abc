import 'dart:io' show Platform;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:formatura_abc/app.dart';
import 'package:formatura_abc/core/redux/store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'FormaturaABC',
    options: Platform.isIOS
      ? const FirebaseOptions(
        googleAppID: '1:554393562027:ios:d8fa145364671c38f940ee',
        gcmSenderID: '554393562027',
        databaseURL: 'https://formaturaabc-60075.firebaseio.com',
      )
      : const FirebaseOptions(
        googleAppID: '1:554393562027:android:e76e1f389933e762f940ee',
        apiKey: 'AIzaSyD168AwYUVgt8ZPnzioyL0zB3leVadZTQ4',
        databaseURL: 'https://formaturaabc-60075.firebaseio.com',
      ),
  );
  runApp(
      ABCGraduationApp(
        createStore(),
      ),
    );
}