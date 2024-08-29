import 'package:exercicecours3/ExerciceSimple_nav.dart';
import 'package:flutter/material.dart';

void Page2ExerciceSimple() {
  runApp(const page2ExerciceSimple(text: '',));
}

class page2ExerciceSimple extends StatelessWidget {
  const page2ExerciceSimple({super.key, required String text});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.text});
  final String text;
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 2"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("go back"),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => const exerciceSimple_nav(),),);
          },
        ),
      ),
    );
  }
}
