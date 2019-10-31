import 'package:flutter/material.dart';

class ExplanationPage extends StatefulWidget {
 

ExplanationPage({@required this.gyaan});

 final String gyaan;

  @override
  _ExplanationPageState createState() => _ExplanationPageState();
}

class _ExplanationPageState extends State<ExplanationPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.orangeAccent
      ),
      home: Scaffold(
        appBar: AppBar(
        title: Text('Explanation'),
         backgroundColor: Colors.transparent
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Text(widget.gyaan,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
