import 'package:flutter/material.dart';
import 'package:first_project/screens/doctors/doctor_screen_01.dart';
import 'package:first_project/screens/patients/patient_screen_01.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: Color(0xFF001F3F),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(),
              child: Text(
                'SAPDOS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'A',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.category, color: Colors.white),
              title: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/doctor');
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.white),
              title: Text(
                'Appointment',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {}, // Define tap action here
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.white),
              title: Text(
                'Chat',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {}, // Define tap action here
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {}, // Define tap action here
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onTap: () {
                // Add functionality for logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
