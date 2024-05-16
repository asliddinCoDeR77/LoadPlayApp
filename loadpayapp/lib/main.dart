import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loadpayapp/qoshimcha/temprature.dart';
import 'package:loadpayapp/qoshimcha/timer.dart';
import 'package:loadpayapp/qoshimcha/todoapp.dart';
import 'package:loadpayapp/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
