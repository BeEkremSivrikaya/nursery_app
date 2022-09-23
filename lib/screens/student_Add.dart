import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentAdd extends StatefulWidget {
  List<Student>? students;

  StudentAdd(List<Student> students) {
    this.students = students;
  }
  // StudentAdd(this.students);

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  Student student = Student("", "", 0, 0);

  @override
  Widget build(BuildContext context) {
    //Scaffold geri gitme tuşunu otomatik oluşturuyor.
    return Scaffold(
      appBar: AppBar(title: Text("Yeni öğrenci ekleme alanı")),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
            child: Column(
          children: [buildFirstNameField()],
        )),
      ),
    );
  }

  buildFirstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci adı", hintText: "Ekrem"),
      onSaved: (String? value) {
        student.firstName = value!;
      },
    );
  }

  buildLastNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci soyadı", hintText: "Siv"),
      onSaved: (String? value) {
        student.lastName = value!;
      },
    );
  }

  buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci adı", hintText: "Ekrem"),
      onSaved: (String? value) {
        student.firstName = value!;
      },
    );
  }
}
