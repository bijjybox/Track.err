import 'package:flutter/material.dart';
import 'livestatus.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<Map> _data = getres();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "TRACK.ERR",
            style: TextStyle(color: Colors.lightBlue),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.directions_railway),
            ),
            Tab(
              icon: Icon(Icons.access_time),
            ),
            Tab(
              icon: Icon(Icons.call_split),
            ),
            Tab(icon: Icon(Icons.short_text))
          ]),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('PURNIKA'),
                currentAccountPicture: CircleAvatar(),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //TRAIN SPEED WEIGHT

            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Card(
                      color: Colors.lightBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                                onPressed: null,
                                child: Text(
                                  'LIVE TRAIN STATUS',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //RESCHEDULES

            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      title: Container(
                    child: Text(
                      'RECENTLY RESCHEDULED TRAINS',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.lightBlue.shade800),
                    ),
                  )),
                ],
              ),
            ),

            //DIVERSIONS
            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      title: Container(
                    child: Text(
                      'ROUTE DIVERSIONS',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.lightBlue.shade800),
                    ),
                  )),
                ],
              ),
            ),

            //TRACKS

            Container(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      title: Container(
                    child: Text(
                      'TRACK STATUS',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.lightBlue.shade800),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<Map> getres() async {
  String api =
      'https://api.railwayapi.com/v2/rescheduled/date/25-06-2017/apikey/ba7wns3axj/';
  http.Response response = await http.get(api);
  return json.decode(response.body);
}
