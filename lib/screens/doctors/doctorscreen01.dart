import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_project/Widgets/appointment_card.dart';
import 'package:first_project/providers/authprovider.dart';

const Color darkBlue = Color(0xFF001F3F);

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final doctorName = Provider.of<AuthProvider>(context).doctorName;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Doctor Dashboard',
              style: TextStyle(
                fontWeight: FontWeight.bold, // Make title bold
              ),
            ),
            Spacer(), // Use Spacer to push the image to the right side
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2, // Adjust drawer width
          decoration: BoxDecoration(
            color: darkBlue, // Use dark blue color
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), // Add border radius to top right corner
              bottomRight: Radius.circular(20.0), // Add border radius to bottom right corner
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  // color: darkBlue,
                ),
                child: Text(
                  'SAPDOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.category, color: Colors.white), // Set icon color
                title: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  //  Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => CategoriesScreen()),
                  //   );
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.white), // Set icon color
                title: Text(
                  'Appointment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Handle appointment tap
                },
              ),
              ListTile(
                leading: Icon(Icons.chat, color: Colors.white), // Set icon color
                title: Text(
                  'Chat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Handle chat tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white), // Set icon color
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Handle settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white), // Set icon color
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Handle logout tap
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView( // Added SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    'Hello! Dr. Amol $doctorName',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'images/dr.png',
                  height: 150, // Adjust the height as needed
                  width: 150, // Adjust the width as needed
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Today\'s Appointments',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 120, // Set fixed height to make it square
                  width: 120, // Set fixed width to make it square
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100], // Sky blue light background color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 19 / 40,
                            backgroundColor: Colors.grey,
                            color: Colors.orange,
                            strokeWidth: 5,
                          ),
                          Text(
                            '19/40',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Pending',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 120, // Set fixed height to make it square
                  width: 120, // Set fixed width to make it square
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100], // Sky blue light background color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 21 / 40,
                            backgroundColor: Colors.grey,
                            color: Colors.green,
                            strokeWidth: 5,
                          ),
                          Text(
                            '21/40',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:darkBlue, // Background color
                foregroundColor: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded edges
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              ),
              onPressed: () {
                // Handle button press
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Wednesday, 7 March',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(Icons.calendar_today),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Pending Appointments', style: TextStyle(fontSize: 16)),
            AppointmentCard(time: '10:00 AM', patientName: 'John Smith', patientAge: 30),
            AppointmentCard(time: '11:00 AM', patientName: 'Jane Doe', patientAge: 25),
            SizedBox(height: 10),
            Text('Completed Appointments', style: TextStyle(fontSize: 16)),
            AppointmentCard(time: '09:00 AM', patientName: 'Alice Brown', patientAge: 45),
          ],
        ),
      ),
    );
  }
}


