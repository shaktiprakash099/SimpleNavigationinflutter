import 'package:flutter/material.dart';
import 'screens/todoScreens.dart';
import 'screens/homescreen.dart';


void main() {
// runApp(new TodoScreen());
runApp(new MaterialApp(
title: 'Retirning Data',
home: new Homescreen(),
));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Fisrst screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Lauch new screen'),
          onPressed: (){
            Navigator.push(context,
             new MaterialPageRoute(
               builder: (context)=> new  SecondSCreen()),
             );
          },   
        ),
      ),
    );
  }
}
class SecondSCreen extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text("Second screen"),
      ),
      body: new Center(
       child: new RaisedButton(
         child: new Text('Go back'), 
         onPressed: (){
           Navigator.pop(context);
         },    

       ),

      ),
    );
  }

}
