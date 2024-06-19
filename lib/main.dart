import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/doctors/doctor_screen_01.dart';
import 'screens/login/login_screen_01.dart';
import 'screens/login/login_screen_02.dart';
import 'screens/login/login_screen_03.dart';
import 'screens/doctors/doctor_screen_02.dart';
import 'screens/patients/patient_screen_01.dart';
import 'providers/authprovider.dart';
import 'theme/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen01(),
        '/login': (context) => LoginScreen02(),
        '/register': (context) => LoginScreen03(),
        '/doctor': (context) => DoctorScreen(),
        '/patientscreen01': (context) => PatientScreen(),
        // '/doctorscreen01': (context) => DoctorScreen01(),
      },
    );
  }
}
