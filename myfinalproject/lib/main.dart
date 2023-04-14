// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:myfinalproject/welcome_page.dart';

void main() {
  runApp(MyQuizApp());
}

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomePage(),
    );
  }
}
