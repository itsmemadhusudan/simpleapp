import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'list_screen.dart';
import 'detail_screen.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Student',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/list': (context) => ListScreen(),
        '/detail': (context) => DetailScreen(),
      },
    );
  }
}

class Student {
  final String firstName;
  final String lastName;
  final String rollNumber;
  final String dob;
  final String fathersName;
  final String mothersName;
  final String contact;
  final String address;

  Student({
    required this.firstName,
    required this.lastName,
    required this.rollNumber,
    required this.dob,
    required this.fathersName,
    required this.mothersName,
    required this.contact,
    required this.address,
  });
}
