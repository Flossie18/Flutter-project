import 'package:flutter/material.dart';
import 'home_page.dart' as home;
import 'exercises.dart' as exercises;
import 'ophtalmologists.dart' as opt;
import 'eyetips.dart' as tips;





void main(){
  runApp(new MaterialApp( 
  theme:new ThemeData(primaryColor:Colors.white, brightness: Brightness.light),
   debugShowCheckedModeBanner:false,
   home:new EyeDetect()
  ));
}

class EyeDetect extends StatefulWidget {
  @override
  _EyeDetectState createState() => new _EyeDetectState();
}

class _EyeDetectState extends State<EyeDetect>with SingleTickerProviderStateMixin {
TabController controller;

@override
void initState(){
  super.initState();
  controller =new TabController( vsync: this,length:4);
}


@override
void dispose(){
  controller.dispose();
 super.dispose();
}

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title:new Text("iDetect"),
        bottom: new TabBar(
          controller:controller,
          tabs:<Tab>[
          new Tab(icon: new Icon(Icons.home)),
          new Tab(icon: new Icon(Icons.fitness_center)),
          new Tab(icon: new Icon(Icons.group)),
          new Tab(icon: new Icon(Icons.explore)),

          ]
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new home.HomePage(),
          new exercises.ExercisesPage(),
          new opt.OptsPage(),
          new tips.TipsPage(),
        ],
      ),
      drawer:new Drawer(
         child: new ListView(
    // Important: Remove any padding from the ListView.
    children: <Widget>[
      new DrawerHeader(
        child: new Text(''),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/IDetect.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
        
      new ListTile(
        title: new Text("Home"),
        leading:new Icon(Icons.home),
       
      ),
      new ListTile(
        title: new Text('About'),
       leading:new Icon(Icons.remove_red_eye),
        
      ),
      new ListTile(
        title: new Text('Exercises'),
       leading:new Icon(Icons.fitness_center),
       
      ),
      new ListTile(
        title: new Text('Ophtalmologists'),
       leading:new Icon(Icons.group),
        
      ),
      new Divider(height:80.0),
      new ListTile(
        title: new Text('General Eye Care tips'),
       trailing:new Icon(Icons.assistant),
       
      ),

      new ListTile(
        title: new Text('Preferences'),
       trailing:new Icon(Icons.settings),
      
      ),
    ],
     ),
     ),
    );
  }
}
