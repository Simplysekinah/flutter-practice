import 'package:firstproject/Views/whatsapp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController course = TextEditingController();

  List<Students> students = [];

  void adddetails() {
    final student = Students(
      email: email.text,
      username: username.text,
      course: course.text,
    );
    setState(() {
      students.add(student);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            StudentDetails(email: email, username: username, course: course),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Whatsapp()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(MediaQuery.of(context).size.width - 20, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.montserrat(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: students.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text(students[index].email),
            //         subtitle: Text(students[index].username),
            //         trailing: IconButton(
            //           icon: Icon(Icons.delete),
            //           onPressed: () {
            //             setState(() {
            //               students.removeAt(
            //                   index); // Removing the student from the list
            //             });
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class StudentDetails extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController username;
  final TextEditingController course;

  const StudentDetails({
    super.key,
    required this.email,
    required this.username,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        detailsField('email', email, Icons.email),
        SizedBox(
          height: 30,
        ),
        detailsField('username', username, Icons.person),
        SizedBox(
          height: 30,
        ),
        detailsField('course', course, Icons.school),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget detailsField(
      String hint, TextEditingController controller, IconData icon) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
        child: TextFormField(
          keyboardType: TextInputType.numberWithOptions(),
          controller: controller,
          decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                child: Icon(icon),
              )),
        ),
      ),
    );
  }
}

class Students {
  final String email;
  final String username;
  final String course;

  Students({
    required this.email,
    required this.username,
    required this.course,
  });
}
