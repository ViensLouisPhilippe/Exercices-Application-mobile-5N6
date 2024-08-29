

import 'dart:math';

import 'package:exercicecours3/exercice1/exercice_page2.dart';
import 'package:exercicecours3/exercice2/exercice2_page2.dart';
import 'package:flutter/material.dart';

class Truc{
  late String name;
  late int id;
  Truc({required this.name, required this.id});
}
class exercice2Page1 extends StatefulWidget {
const exercice2Page1({super.key});
@override
State<exercice2Page1> createState() => _exercice2Page1State();
}

class _exercice2Page1State extends State<exercice2Page1> {
  final TextEditingController _controller = TextEditingController();
  final Truc truc1 = Truc(name: "Kelly", id: 1);
  final Truc truc2 = Truc(name: "Samuel", id: 2);
  final Truc truc3 = Truc(name: "Claude", id: 3);
  final Truc truc4 = Truc(name: "Milan", id: 4);
  final Truc truc5 = Truc(name: "Rose", id: 5);
  void goToNextPage() {
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
      title: Text("Page 2"),
    ),
    body: Center(
      child: Column(
        children: [
          ElevatedButton(
              child : Text(truc1.name),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => exercice2Page2(text: truc1.name),
                  ),
                );
              },
          ),
          ElevatedButton(
            child : Text(truc2.name),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => exercice2Page2(text: truc2.name),
                ),
              );
            },
          ),
          ElevatedButton(
            child : Text(truc3.name),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => exercice2Page2(text: truc3.name),
                ),
              );
            },
          ),
          ElevatedButton(
            child : Text(truc4.name),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => exercice2Page2(text: truc4.name),
                ),
              );
            },
          ),
          ElevatedButton(
            child : Text(truc5.name),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => exercice2Page2(text: truc5.name),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}

}
