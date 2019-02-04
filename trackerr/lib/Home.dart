import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Track.err",
            style: TextStyle(color: Colors.amber),
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
              UserAccountsDrawerHeader(accountName: Text('PURNIKA'),currentAccountPicture: CircleAvatar(),)
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Amritsar Express'),
                            Text(
                              '11000',
                              style: TextStyle(color: Colors.red),
                            ),
                            Text('135'),
                            Text('140'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //RESCHEDULES

            Container(
              child: Text('All resceduled'),
            ),

            //DIVERSIONS

            Container(
              child: Text('diverted trains'),
            ),

            //TRACKS

            Container(
              child: Text('Track status'),
            )
          ],
        ),
      ),
    );
  }
}
