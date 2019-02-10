import 'package:flutter/material.dart';

class live extends StatefulWidget {
  @override
  _liveState createState() => _liveState();
}

class _liveState extends State<live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LIVE STATUS',
          style: TextStyle(color: Colors.lightBlue),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
