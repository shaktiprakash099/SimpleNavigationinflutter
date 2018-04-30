import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:navigationandanimation/model/todo.dart';


class TododetailsScreen extends StatelessWidget{

  final Todo todo;

  // In the constructor, require a Todo
TododetailsScreen({Key key, @required this.todo}) : super(key: key);
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold(
       appBar: new AppBar(
         title: new Text("${todo.title}"),
       ),
       body: new Padding(
         padding: new EdgeInsets.all(16.0),
         child: new Text('${todo.description}'),
       ),
       
      );
  }
}

