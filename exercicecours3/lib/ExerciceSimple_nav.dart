import 'package:exercicecours3/Page2ExerciceSimple.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const exerciceSimple_nav());
}

class exerciceSimple_nav extends StatelessWidget {
  const exerciceSimple_nav({super.key});

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
  final TextEditingController _controller = TextEditingController();

  void _navigateToSecondScreen() {
    final text = _controller.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page2ExerciceSimple(text: text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercice Simple"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter text',
                ),
              ),
            ),
            ElevatedButton(
              child: const Text("go to next page"),
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const page2ExerciceSimple(text: "",),),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
