import 'package:flutter/material.dart';
import './page_1.dart';
import './page_2.dart';

void main() {
  runApp(Task());
}

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: pageIndex == 0 ? Page1() : Page2(),
      ),
    );
  }
}
