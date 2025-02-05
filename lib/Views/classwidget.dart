import 'package:firstproject/Views/function.dart';
import 'package:flutter/material.dart';
// import 'package:firstproject/Views/variables.dart';
// import 'package:firstproject/main.dart';

class DefaultField extends StatefulWidget {
  String labelText;
  Widget prefIcon;
  String? type;
  TextEditingController? controller;
  DefaultField({
    super.key,
    required this.labelText,
    required this.prefIcon,
    required this.type,
    required this.controller,
  });

  @override
  State<DefaultField> createState() => _DefaultFieldState();
}

class _DefaultFieldState extends State<DefaultField> {
  TextEditingController? name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 370,
          height: 45,
          child: TextFormField(
            // keyboardType: TextInputType.numberWithOptions(),
            controller: widget.controller,
            decoration: InputDecoration(
                hintText: widget.labelText,
                label: Text(widget.labelText),
                prefixIcon: widget.prefIcon,
                border: const OutlineInputBorder()),
            validator: (value, [type]) {
              validateInput(value, widget.type);
              return null;
            },
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}

class PasswordField extends DefaultField {
  Widget suffixicn;
  PasswordField({
    super.key,
    required super.labelText,
    required super.prefIcon,
    required super.type,
    required this.suffixicn,
    required super.controller,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool privacy = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 370,
          height: 45,
          child: TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
            obscureText: privacy,
            controller: widget.controller,
            decoration: InputDecoration(
                hintText: widget.labelText,
                label: Text(widget.labelText),
                prefixIcon: widget.prefIcon,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        privacy = !privacy;
                      });
                    },
                    icon: privacy ? widget.suffixicn : Icon(Icons.visibility)),
                border: const OutlineInputBorder()),
            validator: (value, [type]) {
              validateInput(value, type);
            },
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}

enum Gender { male, female }

class GenderSelect extends StatefulWidget {
  dynamic setgender;
  GenderSelect({super.key, required this.setgender});

  @override
  State<GenderSelect> createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  Gender _gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio(
              value: Gender.male,
              groupValue: _gender,
              onChanged: (Gender? value) {
                setState(() {
                  _gender = value!;
                });
                widget.setgender(value);
              }),
          title: Text('Male'),
        ),
        ListTile(
          leading: Radio(
              value: Gender.female,
              groupValue: _gender,
              onChanged: (Gender? value) {
                setState(() {
                  _gender = value!;
                });
                widget.setgender(value);
              }),
          title: Text('FeMale'),
        )
      ],
    );
  }
}

class SubjectSelect extends StatefulWidget {
  final void Function(String, bool) pickedcourse;
  final Map<String, bool> selectedSubjects;

  const SubjectSelect({
    super.key,
    required this.pickedcourse,
    required this.selectedSubjects,
  });

  @override
  State<SubjectSelect> createState() => _SubjectSelectState();
}

class _SubjectSelectState extends State<SubjectSelect> {
  // Subject _subject = [];
  Map<String, bool> subject = {
    'math': false,
    'eng': false,
    'bio': false,
    'socio': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
        children: widget.selectedSubjects.keys.map((subjects) {
      return CheckboxListTile(
          checkColor: Colors.white,
          activeColor: Colors.deepOrange,
          title: Text(subjects),
          value: widget.selectedSubjects[subjects],
          onChanged: (bool? value) {
            widget.pickedcourse(subjects, value ?? false);
            // setState(() {
            //   subject[subjects] = ;
            // });
          });
    }).toList());
  }
}
