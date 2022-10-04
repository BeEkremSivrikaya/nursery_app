import 'package:flutter/material.dart';
import 'package:nursery_app/models/student.dart';
import 'package:nursery_app/main.dart';

class StudentUpgrade extends StatefulWidget {
  List<Student>? students;

  // Student selectStudent = Student(students));

  StudentUpgrade(List<Student> students) {
    this.students = students;
  }
  @override
  State<StudentUpgrade> createState() => _StudentUpgradeState();
}

class _StudentUpgradeState extends State<StudentUpgrade> {
  var formKey = GlobalKey<FormState>();

  Student student = Student("", "", 0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Güncelleme Ekranı")),
      body: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(children: [
              buildFirstNameField(),
              buildLastNameField(),
              buildInputField(),
              buildOutPutField(),
              buildSubmitButton()
            ]),
          )),
    );
  }

  buildFirstNameField() {}

  buildLastNameField() {}

  buildInputField() {}

  buildOutPutField() {}

  buildSubmitButton() {}
}
