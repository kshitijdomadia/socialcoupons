import 'package:cottagechain/UserInterface/homepage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Antrika cottage chain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SplashScreen(
          seconds: 4,
          navigateAfterSeconds: new HomePage(),
          title: new Text(
            'Welcome to Antrika',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey),
          ),
          image: new Image.asset('assets/images/antrika.jpg'),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 200.0,
          loaderColor: Colors.lightBlue),
    ));
  }
}
