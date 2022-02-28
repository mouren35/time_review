import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知识×时间',
      home: addTaskForm(),
    );
  }
}

class addTaskForm extends StatefulWidget {
  addTaskForm({Key? key}) : super(key: key);

  @override
  State<addTaskForm> createState() => _addTaskFormState();
}

class _addTaskFormState extends State<addTaskForm> {
  @override
  Widget build(BuildContext context) {
    bool typing = false;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: typing ? TextBox() : const Text('添加事项'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  typing = !typing;
                });
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: '步骤'),
              Tab(text: '笔记'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '添加事项',
        ),
      ),
    );
  }
}
