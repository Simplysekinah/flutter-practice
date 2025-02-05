import 'package:firstproject/Views/classwidget.dart';
import 'package:firstproject/Views/video.dart';
// import 'package:firstproject/Views/variables.dart';
import 'package:flutter/material.dart';

import 'variables.dart';
// import 'package:firstproject/Views/variables.dart';

class FormWidget extends StatefulWidget {
  final String? title;
  const FormWidget({
    super.key,
    required this.title,
  });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState> myformkey = GlobalKey();
  List<Students> students = [];
  // var pickgender;
  Gender _selectedGender = Gender.male;
  void pickedGender(Gender? gender) {
    setState(() {
      // _selectedGender
      _selectedGender = gender ?? Gender.male; // Update the state
    });
  }

  Map<String, bool> selectedSubjects = {
    'math': false,
    'eng': false,
    'bio': false,
    'socio': false,
  };

  void picked(String subject, bool isSelected) {
    setState(() {
      // _selectedGender
      // Update the state
      selectedSubjects[subject] = isSelected;
    });
    // selectedSubjects[subject] = !isSelected;
  }

  void details() {
    // nameController.text,
    final gent = _selectedGender == Gender.male ? 'male' : 'female';

    // Print the selected subjects
    // print(selected);
    // print(confirmpassController.text);
    if (myformkey.currentState!.validate()) {
      final selected = selectedSubjects.entries
          .where((entry) => entry.value)
          .map((entry) => entry.key)
          .toList();
      final student = Students(
          username: nameController.text,
          email: phoneNController.text,
          password: passController.text,
          course: selected,
          gender: gent);
      setState(() {
        students.add(student);
        nameController.clear();
        phoneNController.clear();
        passController.clear();
        confirmpassController.clear();
        selectedSubjects.updateAll((key, value) => false);
      });
      // print(students);
    }
    // myformkey.currentState!.validate();
    // print(students);
  }

  // Reset all checkboxes to unchecked
  // setState(() {
  //   selectedSubjects.updateAll((key, value) => false);
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(Icons.menu),
        title: Text('${widget.title}'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SimplyVideo()));
              },
              icon: const Icon(Icons.camera_alt_rounded))
        ],
      ),
      body: Center(
        child: Container(
          width: 400,
          // height: 500,
          decoration: BoxDecoration(
            // image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: NetworkImage(
            //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s')),
            color: Colors.grey,
            backgroundBlendMode: BlendMode.darken,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Form(
              key: myformkey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('My Form',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30),
                    DefaultField(
                      type: 'name',
                      labelText: 'Email',
                      controller: nameController,
                      prefIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultField(
                      type: 'email',
                      labelText: 'email',
                      controller: phoneNController,
                      prefIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PasswordField(
                      type: 'password',
                      labelText: 'password',
                      controller: passController,
                      suffixicn: Icon(Icons.visibility_off),
                      prefIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PasswordField(
                      type: 'password',
                      labelText: 'Confirm-Password',
                      controller: confirmpassController,
                      suffixicn: Icon(Icons.visibility_off),
                      prefIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GenderSelect(
                      setgender: pickedGender,
                    ),
                    SubjectSelect(
                        pickedcourse: picked,
                        selectedSubjects: selectedSubjects),
                    ElevatedButton(onPressed: details, child: Text('show')),
                    SizedBox(
                      height: 20,
                    ),
                    ...students.map((student) => ListTile(
                          title: Text(student.username),
                          subtitle: Text(student.email),
                          trailing: Text(student.gender),
                        )),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class Students {
  final String email;
  final String username;
  final List course;
  final String password;
  final String gender;

  Students({
    required this.email,
    required this.username,
    required this.course,
    required this.password,
    required this.gender,
  });

  @override
  String toString() {
    return 'Students(email: $email, username: $username,course:$course gender: $gender, password: $password)';
  }
}
