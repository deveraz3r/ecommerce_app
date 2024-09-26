import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              height: 20,
              width: 40,
              color: Colors.green,
              child: Text('Item: $index'),
            ),
          ]);
        },
      ))),
    );
  }
}
