import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:the_palm_project/pages/payment_pages/widgets/globals.dart';

class Room {
  final int id;
  final int deluxeCount;
  final int standardCount;
  final int tentCount;
  final String name;
  final String contactNo;
  final String emailID;

  Room(
      {this.tentCount,
      this.deluxeCount,
      this.standardCount,
      this.id,
      this.contactNo,
      this.emailID,
      this.name});

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
        id: json['id'],
        deluxeCount: json['deluxeCount'],
        standardCount: json['standardCount'],
        tentCount: json['tentCount'],
        name: json['name'],
        contactNo: json['contactNo'],
        emailID: json['emailID']);
  }
}

Future<Room> makePayment(
    String deluxeCount,
    String standardCount,
    String tentCount,
    String id,
    String name,
    String emailID,
    String contactNo) async {
  final http.Response response = await http.post(
    'https://localhost:3000/getPaymentLink',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'deluxeCount': deluxeCount,
      'standardCount': standardCount,
      'tentCount': tentCount,
      'id': id,
      'name': name,
      'emailID': emailID,
      'contactNo': contactNo
    }),
  );

  if (response.statusCode == 500) {
    return Room.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to process payment.');
  }
}

class Payment extends StatefulWidget {
  const Payment({Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  Future<Room> _futureRoom;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: (_futureRoom == null)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter Your name',
                    icon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter Email ID',
                    icon: Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  controller: _contactController,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Phone Number *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String value) {
                    return value.length > 10
                        ? 'Phone NUmber can be of max 10 digit'
                        : null;
                  },
                ),
                MaterialButton(
                  child: Text('Create Data'),
                  onPressed: () {
                    setState(() {
                      _futureRoom = makePayment(
                          userDict['Deluxe'].toString(),
                          userDict['Standard'].toString(),
                          userDict['Tent'].toString(),
                          DateTime.now().toString(),
                          _nameController.toString(),
                          _emailController.toString(),
                          _contactController.toString());
                    });
                  },
                ),
              ],
            )
          : FutureBuilder<Room>(
              future: _futureRoom,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('Payment Successful');
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                return CircularProgressIndicator();
              },
            ),
    );
  }
}
