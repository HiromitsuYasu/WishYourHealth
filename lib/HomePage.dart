import 'package:flutter/material.dart';
import 'InputData.dart';
import 'DrawGraph.dart';
import 'package:alert_your_task/Health.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      child: const Text(
                        "Graph",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DrawGraph(),
                          ),
                        );
                  },
                ),
              )),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      child: const Text(
                        'Form',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InputData(),
                          ),
                        );
                      },
                    )),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(25.0),
                child: ElevatedButton(
                  child: const Text(
                    "Health",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HealthApp(),
                      ),
                    );
                  },
                ),
              )),
            ]));
  }
}
