import 'package:flutter/material.dart';

class Addtudent extends StatefulWidget {
  const Addtudent({super.key});

  @override
  State<Addtudent> createState() => _AddtudentState();
}

class _AddtudentState extends State<Addtudent> {
  final _formKey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final emailconteoller = TextEditingController();
  final passcontroller = TextEditingController();

  clearText() {
    namecontroller.clear();
    emailconteoller.clear();
    passcontroller.clear();
  }

  addUser() {
    print("add student");
  }

  var name = "";
  var email = '';
  var pass = "";

  @override
  void dispose() {
    namecontroller.dispose();
    emailconteoller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add new Student"),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(label: Text("Name")),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: emailconteoller,
                  decoration: InputDecoration(label: Text("email")),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: passcontroller,
                  decoration: InputDecoration(label: Text("Password")),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        name = namecontroller.text;
                        email = emailconteoller.text;
                        pass = passcontroller.text;
                        addUser();
                        clearText();
                      });
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Register'),
                ),
                ElevatedButton(
                  onPressed: () {
                    clearText();
                    // Validate returns true if the form is valid, or false otherwise.
                    // if (_formKey.currentState!.validate()) {
                    //   // If the form is valid, display a snackbar. In the real world,
                    //   // you'd often call a server or save the information in a database.
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Processing Data')),
                    //   );
                    // }
                  },
                  child: const Text('Reset'),
                ),
              ],
            ),
          ),
        ));
  }
}
