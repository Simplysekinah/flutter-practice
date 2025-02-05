import 'package:flutter/material.dart';

class GotoPage extends StatefulWidget {
  const GotoPage({super.key});

  @override
  State<GotoPage> createState() => _GotoPageState();
}

class _GotoPageState extends State<GotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('show'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/showvideo',
                      arguments: {'item': 0});
                },
                child: Text(
                  'Firstbutton',
                  style: TextStyle(backgroundColor: Colors.blueAccent),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/showvideo',
                      arguments: {'item': 1});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Firstbutton',
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/showvideo',
                      arguments: {'item': 2});
                },
                child: Text(
                  'Firstbutton',
                  style: TextStyle(backgroundColor: Colors.orangeAccent),
                )),
          ],
        ),
      ),
    );
  }
}
