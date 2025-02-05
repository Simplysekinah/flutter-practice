import 'package:firstproject/Views/changepage.dart';
import 'package:firstproject/Views/doublevideo.dart';
import 'package:firstproject/Views/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const AllsugarsTreats(),
      routes: {
        '/': (context) => Signup(),
        '/showvideo': (context) => ManyVideo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class AllsugarsTreats extends StatefulWidget {
  const AllsugarsTreats({super.key});

  @override
  State<AllsugarsTreats> createState() => _AllsugarsTreatsState();
}

class _AllsugarsTreatsState extends State<AllsugarsTreats> {
  TextEditingController fNAME = TextEditingController();
  TextEditingController lNAME = TextEditingController();
  TextEditingController phoneN = TextEditingController();

  List<User> users = [];

  void adduser() {
    final user = User(
      fNAME: fNAME.text,
      lNAME: lNAME.text,
      phoneN: phoneN.text,
    );
    setState(() {
      if (fNAME.text.isNotEmpty ||
          lNAME.text.isNotEmpty ||
          phoneN.text.isNotEmpty) {
        users.add(user);
      }
      fNAME.clear();
      lNAME.clear();
      phoneN.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('Simplysekinah'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
        ],
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Forminput(fNAME: fNAME, lNAME: lNAME, phoneN: phoneN),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: const Text('AddUser'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Forminput extends StatelessWidget {
  final TextEditingController fNAME;
  final TextEditingController lNAME;
  final TextEditingController phoneN;
  const Forminput(
      {super.key,
      required this.fNAME,
      required this.lNAME,
      required this.phoneN});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Text('FirstName:'),
          title: TextField(
            controller: fNAME,
            decoration: const InputDecoration(labelText: 'FirstName'),
          ),
        ),
        ListTile(
          leading: const Text('LastName:'),
          title: TextField(
            controller: lNAME,
            decoration: const InputDecoration(labelText: 'LastName'),
          ),
        ),
        ListTile(
          leading: const Text('Phonenumber:'),
          title: TextField(
            controller: phoneN,
            decoration: const InputDecoration(labelText: 'Phonenumber'),
          ),
        )
      ],
    );
  }
}

class User {
  final String fNAME;
  final String lNAME;
  final String phoneN;

  User({required this.fNAME, required this.lNAME, required this.phoneN});
}
