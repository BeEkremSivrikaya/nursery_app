import 'package:flutter/material.dart';
import 'package:nursery_app/models/student.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());

    throw UnimplementedError();
  }
}

class HomeScreen extends StatelessWidget {
  List<Student> students = [
    Student.withId(1, "student1", "lastname1", 2, 3),
    Student.withId(2, "student2", "lastname2", 3, 6),
    Student.withId(3, "student3", "lastName3", 0, 0),
  ];
  Student selectedStudent = Student.withId(0, "hiç kimse", "", 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Kreş Uygulaması")),
        ),
        body: buildBody());
    throw UnimplementedError();
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(students[index].firstName +
                      " " +
                      students[index].lastName),
                  subtitle: Text("giriş saati : " +
                      students[index].inputs.toString() +
                      " çıkış saati : " +
                      students[index].outputs.toString() +
                      " [${students[index].getStatus}]"),
                  leading: Icon(Icons.person_outline),
                  trailing: buildStatusIcon(students[index].status),
                  onTap: () {
                    this.selectedStudent = students[index];
                  },
                  onLongPress: () {
                    print("uzun basıldı");
                  },
                );
              }),
        ),
        Text("Seçili öğrenci " + this.selectedStudent.firstName)
      ],
    );
  }

  buildStatusIcon(String status) {
    if (status == "okulda") {
      return Icon(Icons.done);
    } else if (status == "okulda değil") {
      return Icon(Icons.clear);
    }
  }
}
