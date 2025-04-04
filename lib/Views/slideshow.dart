import 'package:firstproject/Views/calculator.dart';
import 'package:flutter/material.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  List<Map<String, dynamic>> items = [
    {
      "fruit": "mango",
      "selecteditems": false,
      "icon": "lib/Images/SimplySekinahTech1.jpg",
      "count": 0
    },
    {
      "fruit": "orange",
      "selecteditems": false,
      "icon": "lib/Images/SimplySekinahTech1.jpg",
      "count": 0
    },
    {
      "fruit": "apple",
      "selecteditems": false,
      "icon": "lib/Images/SimplySekinahTech1.jpg",
      "count": 0
    },
    {
      "fruit": "pineapple",
      "selecteditems": false,
      "icon": "lib/Images/SimplySekinahTech1.jpg",
      "count": 0
    },
    {
      "fruit": "banana",
      "selecteditems": false,
      "icon": "lib/Images/SimplySekinahTech1.jpg",
      "count": 0
    },
  ];
  List<Map<String, dynamic>> stored = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
        // leading: IconButton(
        //     onPressed: () {
        //       print('hi');
        //     },
        //     icon: Icon(Icons.menu)),
      ),
      drawer: Drawer(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 70,
              child: DrawerHeader(child: Text('Menu')),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Column(
                children: [
                  ...stored.map((element) => Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              element['icon'],
                              width: 50,
                              height: 50,
                            ),
                            title: Text(element['fruit']),
                            trailing: Text('${element['count']}'),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        )),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            ...items.map((element) => Container(
                  decoration: BoxDecoration(
                      color: element['selecteditems']
                          ? Colors.blueAccent
                          : Colors.lightGreenAccent),
                  child: ListTile(
                    onLongPress: () {
                      stored.remove(element);
                    },
                    onTap: () {
                      setState(() {
                        element['selecteditems'] = true;
                        if (stored.contains(element)) {
                          element['count'] += 1;
                        } else {
                          stored.add(element);
                        }
                      });
                    },
                    leading: Image.asset(
                      element['icon'],
                      width: 50,
                      height: 50,
                    ),
                    trailing: element['selecteditems']
                        ? Icon(Icons.tiktok)
                        : Icon(Icons.add),
                    subtitle: Text('Click to add ${element['fruit']} to cart'),
                    title: Text(element['fruit']),
                  ),
                ))
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: 'home',
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.home))),
        BottomNavigationBarItem(
            label: 'check',
            icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calculator()));
                },
                icon: Icon(Icons.safety_check))),
        BottomNavigationBarItem(
            label: 'settings',
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.settings))),
      ]),
    );
  }
}
