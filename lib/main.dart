// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:trabalho_pdm/Tabs/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyFormScreen(),
    );
  }
}

class MyFormScreen extends StatefulWidget {
  @override
  _MyFormScreenState createState() => _MyFormScreenState();
}

class _MyFormScreenState extends State<MyFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _passwd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F6),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "New user",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Account creation",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          'img/perfil.jpg',
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Full name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email address'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      }
                      // Add more email validation logic if needed
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an valid password';
                      }
                      // Add more password validation logic if needed
                      return null;
                    },
                    onSaved: (value) {
                      _passwd = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Process the form data (e.g., submit to a server)
                        print('Name: $_name');
                        print('Email: $_email');
                        print('Email: $_passwd');
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabsPage()),
                      );
                    },
                    child: Text('Create my account'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
