import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserInformation({required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user['greeting'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              user['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(user['avatar']),
          radius: 30,
        ),
      ],
    );
  }
}
