import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sat_exam/screens/admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryIconTheme: IconThemeData(color: Colors.deepPurple),
      ),
      home: AdminPage(),
    );
  }
}
