// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_stateful_widget/screens/landing_screen.dart';
import 'package:flutter_stateful_widget/utils/contants.dart';
import 'dart:ui';
void main() {
 runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo UI 1',
      theme: ThemeData(
        primaryColor: COLOR_WHITE, 
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT, 
        fontFamily: "Montserrat"),
      home: LandingScreen(),
    );
  }
}


