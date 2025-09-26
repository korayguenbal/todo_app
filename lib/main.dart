import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: TodoApp()));
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        todos.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do Liste")),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: TextField(controller: _controller)),
              ElevatedButton(onPressed: _addTodo, child: Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
