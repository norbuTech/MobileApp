import 'package:flutter/material.dart';

class Todohome extends StatefulWidget {
  const Todohome({super.key});

  @override
  State<Todohome> createState() => _TodohomeState();
}

class _TodohomeState extends State<Todohome> {
  String title = "Hello";

  num count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),

      
      body: Container(
        child: Center(
          child: Text(
            // title,
            count.toString(),
            style: const TextStyle(fontSize: 32),
          ),
        ),
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            // title = "something new";
            count++;
          });
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(
          //       title,
          //       style: const TextStyle(fontSize: 32),
          //     ),
          //   ),
          // );
        },
        
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
