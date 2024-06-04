import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_project/providers/authprovider.dart';
import 'package:first_project/data/mock_data.dart';
// import 'package:first_project/json/user_data.json';
// import 'package:flutter/services.dart'; // Import rootBundle



const Color darkBlue = Color(0xFF001F3F);

class PatientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final doctorName = Provider.of<AuthProvider>(context).doctorName;
    final user = jsonData['user'] as Map<String, dynamic>;
    final doctorsList = jsonData['doctorsList'] as List<dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Patient Screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            color: darkBlue,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Handle categories tap
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.white),
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
                leading: Icon(Icons.chat, color: Colors.white),
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
                leading: Icon(Icons.settings, color: Colors.white),
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
                leading: Icon(Icons.logout, color: Colors.white),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user['greeting'],
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      user['name'],
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(user['avatar']),
                  radius: 40,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Doctor\'s List',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(Icons.arrow_circle_down, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: doctorsList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 11.0,
                mainAxisSpacing: 11.0,
                childAspectRatio: 3/2,
              ),
              itemBuilder: (context, index) {
                final doctor = doctorsList[index] as Map<String, dynamic>;
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(doctor['doctorImage']),
                            radius: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctor['doctorName'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              doctor['specialization'],
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 16.0),
                                Text('${doctor['price']}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


