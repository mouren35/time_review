import 'package:flutter/material.dart';
import '08.ItemsList.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  subtitle: Text('完成时间'),
                )
              ],
            ),
          ),
          Card(),
        ],
      ),
    );
  }
}
