import 'package:flutter/material.dart';
import 'main.dart';  // Import the main.dart for the Student class

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Student> students = ModalRoute.of(context)!.settings.arguments as List<Student>;

    return Scaffold(
      appBar: AppBar(title: Text('Student List')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.usnews.com/cmsmedia/a1/7c/61548aea4db9ab9045673bb5187f/160919-studentscollege-stock.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            var student = students[index];
            return ListTile(
              title: Text('${student.firstName} ${student.lastName}'),
              subtitle: Text('Roll No: ${student.rollNumber}'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: student,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
