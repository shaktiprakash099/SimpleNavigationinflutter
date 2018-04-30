import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:navigationandanimation/model/todo.dart';
import 'package:navigationandanimation/screens/tododescription.dart';


class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Passing Data',
      home: new TodoMaindisplayScreen(
        todos: new List.generate(
          20,
          (i) => Todo(
              'Todo $i', 'A description of what needs to be done for Todo $i'),
        ),
      ),
    );
  }
}

class TodoMaindisplayScreen extends StatelessWidget {
  final List<Todo> todos;
  TodoMaindisplayScreen({Key key, @required this.todos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Todos'),
      ),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context,index){
          return new ListTile(
            title: new Text(todos[index].title),
           onTap: (){
             Navigator.push(
               context,
              new MaterialPageRoute(
               builder: (context) => new TododetailsScreen(todo:todos[index])

              ),
              );
           },   
          );
        },
      ),
    );
  }
}
