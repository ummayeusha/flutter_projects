import 'package:flutter/material.dart';
import 'package:test_project/class3.dart';

class MyApp extends StatelessWidget{ //nothing will be updated here
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Class3(),
    );
  }
}
