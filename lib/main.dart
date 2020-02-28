import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GoGetters App",
      theme:  ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
 // final timestamp = new DateTime.now().microsecondsSinceEpoch;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String url = 'https://gaadicalls.firebaseapp.com/add_vendor/'+DateTime.now().millisecondsSinceEpoch.toString();
   Future<String> makeRequest() async {
     var response = http.get(Uri.encodeFull(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor App'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Press Me"),
            onPressed: () {
              print(new DateTime.now().millisecondsSinceEpoch);
              makeRequest();
            },
          ),
        ),
      ),
    );
  }
}

