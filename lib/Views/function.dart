import 'package:firstproject/Views/variables.dart';

String validateInput(value, [type]) {
  switch (type) {
    case 'name':
      if (value == '') {
        return '$type cannot be empty';
      } else if (value!.length <= 5) {
        return '$type must be greater than 5';
      } else if (type == 'email' && !value.endsWith('@gmail.com')) {
        return '$type must end with @gmail.com';
      }
      break;
    case 'email':
      if (value == '') {
        return '$type cannot be empty';
      } else if (type == 'email' && !value.endsWith('@gmail.com')) {
        return '$type must end with @gmail.com';
      }
      break;
    case 'password':
      if (value == '') {
        return '$type cannot be empty';
      } else if (value != passController.text) {
        return 'Password does not match';
      } else if (type == 'password' &&
          !RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+=-{};:"<>,./?])[A-Za-z\d!@#$%^&*()_+=-{};:"<>,./?]+$')
              .hasMatch(value!)) {
        return 'Sorry $type has to be alphabets, numbers and symbols';
      }
      break;
    default:
  }
  return '';
}
