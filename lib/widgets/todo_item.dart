import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({super.key, required this.todo, required this.onToDoChanged, required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
          // print('Clicked on ToDo Item!');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.green,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical:12.0),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
             color: tdRed,
             borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
                // print('Clicked on Deleted item!!');
                onDeleteItem(todo.id);
              },
            ),
          )
      )
    );
  }
}