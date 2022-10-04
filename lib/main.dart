import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nursery_app/models/student.dart';
import 'package:nursery_app/screens/home_screen.dart';
import 'package:nursery_app/screens/student_Add.dart';

//validation güncelleme silme
// void main() {
//   runApp(MyApp());
// }
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());

    throw UnimplementedError();
  }
}

class Deneme {}
