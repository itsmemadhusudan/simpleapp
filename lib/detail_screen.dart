import 'package:flutter/material.dart';
import 'main.dart';  // Import the main.dart for the Student class

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Student student = ModalRoute.of(context)!.settings.arguments as Student;

    return Scaffold(
      appBar: AppBar(title: Text('Student Detail')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.usnews.com/cmsmedia/a1/7c/61548aea4db9ab9045673bb5187f/160919-studentscollege-stock.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('First Name: ${student.firstName}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('Last Name: ${student.lastName}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('Roll Number: ${student.rollNumber}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('DOB: ${student.dob}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('Father\'s Name: ${student.fathersName}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('Mother\'s Name: ${student.mothersName}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('Contact: ${student.contact}', style: TextStyle(fontSize: 24, color: Colors.black)),
              Text('Address: ${student.address}', style: TextStyle(fontSize: 24, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
