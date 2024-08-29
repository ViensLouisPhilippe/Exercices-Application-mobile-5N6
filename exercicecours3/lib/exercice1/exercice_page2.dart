import 'package:exercicecours3/exercice1/exercice_page1.dart';
import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key, required this.text});
  final String text;
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("go back"),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
            Text(widget.text,style: TextStyle(fontSize: 24),
            ),
          ],
        ),

      ),
    );
  }
}
