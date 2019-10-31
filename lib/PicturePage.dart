import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
//import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:space_pictures/explanation_page.dart';

class PicturePage extends StatefulWidget {
  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  // var alertStyle = AlertStyle(
  //   animationType: AnimationType.grow,
  //   isCloseButton: true,
  //   isOverlayTapDismiss: true,
  // );

  String url = 'https://www.w3schools.com/w3css/img_lights.jpg';
  String words = 'Bluh Blah Blah';
  Future getData() async {
    var response = await http.get(
        Uri.encodeFull(
            "https://api.nasa.gov/planetary/apod?api_key=AAbg7TIAQsMdb5Bab9htdevW70EXxhIMxBCuZHKk"),
        headers: {"Accept": "application/json"});

    Map<String, dynamic> data = json.decode(response.body);


    url = data['url'];
        print(url);
    words = data['explanation'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.transparent),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Space Pictures'),
            backgroundColor: Colors.transparent),
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 5, child: Image(image: NetworkImage(url))),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.redAccent,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            getData();
                          });
                        },
                        child: Text('Refresh'),
                      ),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.white,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ExplanationPage(gyaan: words)));
                        },
                        child: Text("Explanation"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
