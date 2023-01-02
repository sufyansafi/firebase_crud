import 'package:firebase_crud/addstudnet.dart';
import 'package:flutter/material.dart';

import 'listofstudentpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Crud"),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Addtudent()));
              },
              child: const Text(
                "Add ",
                style: const TextStyle(color: Colors.black),
              ))
        ],
      )),
      body: const Listofstudentpage(),
    );
    
  }
}
