import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     floatingActionButton:new FloatingActionButton(
         onPressed:null,
        ), 

      body:   new Container(
           child: new Center(
             child: new Text('Tap the button to scan your eyes',style:new TextStyle(color:Colors.white),),
           ),
        decoration: new BoxDecoration( 
                               // new
          gradient: new LinearGradient(                                 // new
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,                                  // new
            end: Alignment.bottomLeft,                                   // new
            // Add one stop for each color.
            // Stops should increase
            // from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's
              // Colors class.
              Colors.blue[400],
              Colors.lightBlue[200],
              Colors.green[100],
              Colors.lime[100],
            ],
         ),
        ),  
       ),
       
    );
  }
}