import 'package:flutter/material.dart';
import 'package:nursery_app/models/student.dart';
import 'package:nursery_app/screens/student_Add.dart';

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

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  buildBody() {
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
                    setState(() {
                      this.selectedStudent = students[index];
                      print("tıklandı ${this.selectedStudent.firstName}");
                    });
                  },
                  onLongPress: () {
                    print("uzun basıldı");
                  },
                );
              }),
        ),
        Text("Seçili öğrenci " + this.selectedStudent.firstName),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentAdd(students)));
                },
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Öğrenci ekle")
                  ],
                  // SizedBox(width: 5.0,),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    print(
                        "öğrenci güncelleme butonu çalışıyor ${selectedStudent.firstName}");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Row(
                    children: [
                      Icon(Icons.upload),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("Güncelle")
                    ],
                  )),
            ),
            ElevatedButton(
                onPressed: () {
                  print("silme butonu çalışıyor ${selectedStudent.firstName}");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Row(
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Sil")
                  ],
                )),
          ],
        )
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
