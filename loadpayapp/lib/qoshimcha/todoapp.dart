import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TodoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TodoList extends StatelessWidget {
  final List<String> _tasks = ['Task 1', 'Task 2', 'Task 3'];

  void _toggleTask(BuildContext context, int index) {
    _tasks[index] = _tasks[index].startsWith('✓ ')
        ? _tasks[index].substring(2)
        : '✓ ${_tasks[index]}';
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(_tasks[index]),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_tasks[index]),
            onTap: () => _toggleTask(context, index),
          );
        },
      ),
    );
  }
}
