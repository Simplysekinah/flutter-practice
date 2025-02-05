import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monday'),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: SizedBox(
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: [
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
            Icon(Icons.phone),
          ],
        ),
      ))),
    );
  }
}
