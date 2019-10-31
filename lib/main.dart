import 'package:flutter/material.dart';
import 'PicturePage.dart';


/*        Theme data we can create to make a custom theme from scratch and define everything.
ThemeData(
primaryColor: Color(0xFF0A0E21),
accentColor: Colors.purple,
scaffoldBackgroundColor: Color(0xFF0A0E21),
textTheme: TextTheme(           // We can't change text colors directly, we need to use text theme.
body1: TextStyle( color: Colors.white)
),
),
*/


void main() => runApp(PictureApp());

class PictureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: PicturePage(),
    );
  }
}


//'https://github.com/srihariash999/Arduino-Experiments/blob/master/internet%20Clock%20and%20Weather%20display/Images/Screenshot%20from%202019-04-29%2016-59-59-48.png'

//  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage( resText: text, resNum: num,resInfo: info,)));


  // theme: ThemeData.dark().copyWith(
  //     primaryColor: Color(0xFF0A0E21),
  //     accentColor: Colors.purple,
  //     scaffoldBackgroundColor: Color(0xFF0A0E21),
  //     ),