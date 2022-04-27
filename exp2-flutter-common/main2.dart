import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: CollegeIdCard(),
    ));

class CollegeIdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('College ID Card'),
        centerTitle: true,
        backgroundColor: Colors.pink[900],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60.0,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'STUDENT NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Vaibhav Ankolekar',
              style: TextStyle(
                color: Colors.pink[300],
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'COLLEGE ADDRESS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'BVCOE Kharghar, Navi Mumbai',
              style: TextStyle(
                color: Colors.pink[300],
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT ACADEMIC YEAR',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'TE - Information Technology',
              style: TextStyle(
                color: Colors.pink[300],
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'vaibhav@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  '9876543210',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'Student Address',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Jai Omkar CHS, Sector 10, Airoli, Navi mumbai-400708',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 2.0,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
