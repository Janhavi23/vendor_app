import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';




class GetTimestamp extends StatefulWidget {
  @override
  _GetTimestampState createState() => _GetTimestampState();
}

class _GetTimestampState extends State<GetTimestamp> {
  _loadtimestamp() async {
    SharedPreferences prefs = await  SharedPreferences.getInstance();
    prefs.setInt('id', DateTime.now().millisecondsSinceEpoch);
    print(prefs);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _loadtimestamp(),
    );
  }
}



