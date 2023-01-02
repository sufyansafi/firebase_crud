import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'updatestudentpage.dart';

class Listofstudentpage extends StatefulWidget {
  const Listofstudentpage({super.key});

  @override
  State<Listofstudentpage> createState() => _ListofstudentpageState();
}

class _ListofstudentpageState extends State<Listofstudentpage> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('students').snapshots();

  deleteuser(id) {
    print("user delet$id");
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: studentsStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("something went wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List Storedocument = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            Storedocument.add(a);
          }).toList();
          return Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  // columnWidths: <int, TableColumnWidth>{1:FixedColumnWidth(150),},
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Container(
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "Name",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                      TableCell(
                          child: Container(
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "eMAIL",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                      TableCell(
                          child: Container(
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "Action",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text('sufysn', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('suysn', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      TableCell(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Updatestudentpage()));
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.deepOrangeAccent,
                              )),
                          IconButton(
                              onPressed: () => {deleteuser(1)},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ))
                        ],
                      )),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text('sufysn', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('suysn', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      TableCell(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Updatestudentpage()));
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.deepOrangeAccent,
                              )),
                          IconButton(
                              onPressed: () => {deleteuser(1)},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ))
                        ],
                      )),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text('sufysn', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('suysn', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      TableCell(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Updatestudentpage()));
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.deepOrangeAccent,
                              )),
                          IconButton(
                              onPressed: () => {deleteuser(1),
                              print(Storedocument)},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ))
                        ],
                      )),
                    ]),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
