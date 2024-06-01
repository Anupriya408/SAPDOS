// import 'package:flutter/material.dart';

// class AuthProvider with ChangeNotifier {
//   String _doctorName = 'John Doe';
//   String? _error;

//   String get doctorName => _doctorName;
//   String? get error => _error;

//   void login(String email, String password) {
//     if (email != 'doctor@example.com' || password != 'password') {
//       _error = 'Invalid email or password';
//     } else {
//       _error = null;
//     }
//     notifyListeners();
//   }

//   void signUp(String email, String password) {
//     if (email.isEmpty || password.isEmpty) {
//       _error = 'Email and password cannot be empty';
//     } else {
//       _error = null;
//     }
//     notifyListeners();
//   }

//   void clearError() {
//     _error = null;
//     notifyListeners();
//   }
// }



import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String _doctorName = "John Doe";

  String get doctorName => _doctorName;

  void updateDoctorName(String name) {
    _doctorName = name;
    notifyListeners();
  }
}
