import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class NGO extends StatefulWidget {
  @override
  _NGOState createState() => _NGOState();
}

class _NGOState extends State<NGO> {
  //global key for the NGO form

  final _formKey = GlobalKey<FormState>();

  //variables for the NGO form

  String registration_deed_no = " ";
  String name_of_ngo = " ";
  String founder = " ";
  String pannumber = " ";
  String email = " ";
  String contact = " ";
  String location = " ";
  String yearofestablishment = " ";

// function for adding NGO data called from the submit button

  sendData() {
    print('The data is submitted');
  }

// function to cancel the data submitted

  cancel() {
    print('Data Submission Cancelled');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Add details of your NGO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.note),
                      hintText: 'Enter registration deed number',
                      labelText: 'Registration Deed No',
                    ),
                    validator: (val) => val.isEmpty
                        ? 'Please enter registration deed number '
                        : null,
                    onChanged: (val) {
                      setState(() => registration_deed_no = (val));
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.business),
                      hintText: 'Enter the name of NGO',
                      labelText: 'Name of NGO',
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Enter the name of NGO' : null,
                    onChanged: (val) {
                      setState(() => name_of_ngo = (val));
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter founder name',
                      labelText: 'Founder name',
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Please enter founder name' : null,
                    onChanged: (val) {
                      setState(() => founder = (val));
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.payment),
                      hintText: 'Enter your pan number',
                      labelText: 'Pan number',
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Please enter your pan number' : null,
                    onChanged: (val) {
                      setState(() => pannumber = (val));
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter your email id',
                      labelText: 'Email ID',
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Enter your email id' : null,
                    onChanged: (val) {
                      setState(() => email = (val));
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter your phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (val) =>
                        val.isEmpty ? 'Enter your phone number' : null,
                    onChanged: (val) {
                      setState(() => contact = (val));
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_on),
                      hintText: 'Enter your location',
                      labelText: 'Location',
                    ),
                    keyboardType: TextInputType.datetime,
                    validator: (val) =>
                        val.isEmpty ? 'please enter your location' : null,
                    onChanged: (val) {
                      setState(() => location = (val));
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your year of establishment',
                      labelText: 'Establishment date',
                    ),
                    keyboardType: TextInputType.datetime,
                    validator: (val) => val.isEmpty
                        ? 'please enter your year of establishment'
                        : null,
                    onChanged: (val) {
                      setState(() => yearofestablishment = (val));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Container(
                          child: new RaisedButton(
                            color: Colors.red,
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              //code to call the function to cancel
                            },
                          ),
                        ),
                        new Container(
                          child: new RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              //code to call the function to submit data
                            },
                          ),
                        ),
                      ],
                    ),
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
