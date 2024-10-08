import 'package:exercicecours3/exercice1/exercice_page2.dart';
import 'package:exercicecours3/exercice2/exercice2_page1.dart';
import 'package:flutter/material.dart';

import 'exercice1/exercice_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: exercice2Page1(),
    );
  }
}