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

    // throw UnimplementedError();
  }
}

class HomeScreen extends StatelessWidget {
  List<Student> students = [
    Student.withId(1, "ekrem", "sivrikaya", 4, 7),
    Student.withId(2, "bahar", "sivrikaya", 3, 6),
    Student.withId(3, "firstName", "lastName", 5, 8)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Kreş Uygulaması")),
        ),
        body: buildBody());
    // throw UnimplementedError();
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
                      students[index].outputs.toString()),
                  leading: Icon(Icons.person_outline),
                  trailing: Icon(Icons.done),
                );
              }),
        )
      ],
    );
  }
}
