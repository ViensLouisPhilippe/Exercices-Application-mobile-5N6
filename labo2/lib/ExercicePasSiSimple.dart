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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Demo!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Container(
                        color: Colors.red,
                        height: 200,
                      ),
                    )
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: const Row(
                          children: [
                            Center(
                              child: Text('YO',style: TextStyle(
                                color: Colors.red)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 100,
                              )
                            ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                                height: 100,
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
                child: Container(
                )
            ),
            Container(
              width: double.infinity,
              color: Colors.lightBlue,
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // Define your button action here
                },
                child: const Text('Bouton du bas', style: TextStyle(
                    color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
