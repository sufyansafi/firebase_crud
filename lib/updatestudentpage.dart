import 'package:flutter/material.dart';

class Updatestudentpage extends StatefulWidget {
  const Updatestudentpage({super.key});

  @override
  State<Updatestudentpage> createState() => _UpdatestudentpageState();
}

class _UpdatestudentpageState extends State<Updatestudentpage> {
  final _formKey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final emailconteoller = TextEditingController();
  final passcontroller = TextEditingController();

  Updateuser() {
    print("user update");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UPDATE Student"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              TextFormField(
                initialValue: 'sadi',
                autofocus: false,
                autocorrect: true,
                onChanged: (value) => {},
                // autofillHints:true ,
                // controller: namecontroller,
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
                initialValue: 'sadi@gmail.com',
                autofocus: true,
                autocorrect: true,
                onChanged: (value) => {},
                // autofillHints:true ,
                // controller: namecontroller,
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
                initialValue: '2343544',
                autofocus: true,
                autocorrect: true,
                onChanged: (value) => {},
                // autofillHints:true ,
                // controller: namecontroller,
                decoration: InputDecoration(label: Text("password ")),
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
                    Updateuser();
                    Navigator.pop(context);
                    // setState(() {
                    //   name = namecontroller.text;
                    //   email = emailconteoller.text;
                    //   pass = passcontroller.text;
                    //   addUser();
                    //   clearText();
                    // });
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Update'),
              ),
              ElevatedButton(
                onPressed: () {
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
      ),
    );
  }
}
