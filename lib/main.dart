import 'package:flutter/material.dart';
import 'package:startup_namer/06.TimeStarts.dart';
import '09.KnowledgeListing.dart';
import '08.ItemsList.dart';
import 'package:badges/badges.dart';
import '04.AddNotes.dart';
import '05.AddTasks.dart';
import '02.StartReviewing.dart';

void main(List<String> args) {
  runApp(const KnowledgeTime());
}

class KnowledgeTime extends StatelessWidget {
  const KnowledgeTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "知识×时间",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Badge(
            badgeContent: const Text(
              '5',
              style: TextStyle(color: Colors.white),
            ),
            child: ListTile(
              title: const Text('复习'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddNotes(),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const StartReviewing())),
                    icon: const Icon(Icons.play_arrow),
                  )
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const KnowledgeListing(),
                  ),
                );
              },
            ),
          ),
          Badge(
            badgeContent: const Text(
              '4',
              style: TextStyle(color: Colors.white),
            ),
            child: ListTile(
              title: const Text('事项'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddTasks(),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ItemsList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
