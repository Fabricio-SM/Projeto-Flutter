// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  _MyPetPageState createState() => _MyPetPageState();
}

class _MyPetPageState extends State<PetPage> {
  TextEditingController dateinput =
      TextEditingController(); //text editing controller for text field
  final _formKey = GlobalKey<FormState>();
  String _namePet = '';
  String _race = '';
  final String _birthday = '';

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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
                  SizedBox(height: 16),
                  Text(
                    "Add a pet",
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
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _namePet = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Race'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an race';
                      }
                      // Add more email validation logic if needed
                      return null;
                    },
                    onSaved: (value) {
                      _race = value!;
                    },
                  ),
                  TextField(
                    controller:
                        dateinput, //editing controller of this TextField
                    decoration: InputDecoration(
                      labelText: "Enter Date", //label text of field
                      icon: Icon(Icons.calendar_today), //icon of text field
                    ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateinput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Process the form data (e.g., submit to a server)
                        print('Name: $_namePet');
                        print('Email: $_race');
                        print('Email: $_birthday');
                      }
                    },
                    child: Text("Add a pet"),
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