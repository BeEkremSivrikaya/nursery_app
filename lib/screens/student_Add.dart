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
  var formKey = GlobalKey<FormState>();
  Student student = Student("", "", 0, 0);

  @override
  Widget build(BuildContext context) {
    //Scaffold geri gitme tuşunu otomatik oluşturuyor.
    return Scaffold(
      appBar: AppBar(title: Text("Yeni öğrenci ekleme alanı")),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                buildFirstNameField(),
                buildLastNameField(),
                buildInputField(),
                buildOutPutField(),
                buildSubmitButton()
              ],
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

  buildInputField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Giriş saati", hintText: "8"),
      onSaved: (String? value) {
        student.inputs = int.parse(value!);
      },
    );
  }

  buildOutPutField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Çıkış saati", hintText: "12"),
      onSaved: (String? value) {
        student.outputs = int.parse(value!);
      },
    );
  }

  buildSubmitButton() {
    return ElevatedButton(
        onPressed: () {
          formKey.currentState!.save();
          widget.students?.add(student);
          Navigator.pop(context);
        },
        child: Text("Kaydet"));
  }
}
