import 'package:flutter/material.dart';
import '02.StartReviewing.dart';

class KnowledgeListing extends StatelessWidget {
  const KnowledgeListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "知识×时间",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('知识点'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return const ListTile(
                      title: Text('知识点1'),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('开始复习'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const StartReviewing()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
