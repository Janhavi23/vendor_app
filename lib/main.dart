import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vendor_app/timestampget.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GoGetters App",
      theme:  ThemeData(primarySwatch: Colors.blue),
      home: GetTimestamp(),
    );
  }
}



