import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(

                children : <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      color: Colors.green,
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0), // Padding 3
                    child: Container(
                      color: Colors.yellow,
                      height: 200,
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    height: 200,
                  ),
                  Container(
                    color: Colors.orange,
                    height: 200,
                  ),
                  Container(
                    color: Colors.purple,
                    height: 200,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 200,
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    height: 200,
                  ),
                  Container(
                    color: Colors.brown,
                    height: 200,
                  ),
                ],
            ),
        ),
      ),
    );
  }
}
