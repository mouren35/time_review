import 'package:flutter/material.dart';

class StartReviewing extends StatelessWidget {
  const StartReviewing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "知识×时间",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('复习'),
        ),
        body: Column(
          // 滚动界面下，使按钮始终处于底部
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LinearProgressIndicator(
                      color: Colors.red,
                      value: 0.5,
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: () {},
              child: Text(
                '显示答案',
              ),
              color: Colors.blue[400],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
