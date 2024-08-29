import 'package:flutter/material.dart';

import 'exercice_page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key, required this.title});
  final String title;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _controller = TextEditingController();

  void _navigateToSecondScreen() {
    final text = _controller.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page2(text: text),
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
              onPressed: _navigateToSecondScreen,
            ),
          ],
        ),
      ),
    );
  }
}
