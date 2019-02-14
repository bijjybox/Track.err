import 'package:flutter/material.dart';
import 'realtime.dart';

class live extends StatefulWidget {
  @override
  _liveState createState() => _liveState();
}

class _liveState extends State<live> {
  var _trainname = TextEditingController();
  var _startdate = TextEditingController();

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
        body: ListView(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 300.0),
                color: Colors.white,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: _trainname,
                          decoration: InputDecoration(
                              labelText: "Train name/number",
                              fillColor: Colors.white),
                        ),
                        TextField(
                          controller: _startdate,
                          decoration: InputDecoration(labelText: "Start Date"),
                        ),
                        RaisedButton(
                          onPressed: () {
                            var routs = MaterialPageRoute(
                                builder: (BuildContext context) {
                              return real();
                            });

                            Navigator.of(context).push(routs);
                          },
                          child: Text('Continue'),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
