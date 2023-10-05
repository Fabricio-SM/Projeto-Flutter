// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:trabalho_pdm/widgets/pet_cache.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  _MyPetPageState createState() => _MyPetPageState();
}

class _MyPetPageState extends State<PetPage> {
  TextEditingController dateinput =
      TextEditingController(); //text editing controller for text field
  final _formKey = GlobalKey<FormState>();
  final _tipoController = TextEditingController();
  final _namePController = TextEditingController();
  final _raceController = TextEditingController();
  final String _namePet = '';
  final String _race = '';
  final String _birthday = '';

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PetCache>(
      builder: (context, cache, _) {
        final mediaQuery = MediaQuery.sizeOf(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          ),
          backgroundColor: Color(0xFFF1F3F6),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Text(
                                "Add a pet",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: mediaQuery.height / 8,
                        height: mediaQuery.height / 8,
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
                      Center(
                        child: Column(
                          children: [
                            Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Text(
                                      "Type",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            _tipoController.text = 'Cão';
                                          },
                                          child: Text(
                                            "Dog",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        ElevatedButton(
                                          onPressed: () {
                                            _tipoController.text = 'Gato';
                                          },
                                          child: Text(
                                            "Cat",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _namePController.text = value!;
                        },
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Race',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an race';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _raceController.text = value!;
                        },
                      ),
                      SizedBox(height: 40),
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
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(mediaQuery.width / 1.5, 50),
                          elevation: 90,
                          backgroundColor: Color.fromARGB(255, 116, 129, 252),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            final name = _namePController.text;
                            final race = _raceController.text;
                            final dataNasc = dateinput.text;

                            cache.addPet(
                                _tipoController.text, name, race, dataNasc);
                            // Process the form data (e.g., submit to a server)
                            print('Name: ${_namePController.text}');
                            print('Email: ${_raceController.text}');
                            print('Data: ${dateinput.text}');
                            print('Tipo: ${_tipoController.text}');
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text(
                          "Add a pet",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
