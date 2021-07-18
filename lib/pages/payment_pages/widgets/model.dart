import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:js' as js;
import 'package:the_palm_project/pages/payment_pages/widgets/globals.dart';

class Room {
  final int order_id;
  final int Deluxe;
  final int Standard;
  final int Tent;
  final String name;
  final String contact;
  final String email;

  Room({
    this.Tent,
    this.Deluxe,
    this.Standard,
    this.order_id,
    this.contact,
    this.email,
    this.name,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      order_id: json['order_id'],
      Deluxe: json['Deluxe'],
      Standard: json['Standard'],
      Tent: json['Tent'],
      name: json['name'],
      contact: json['contact'],
      email: json['email'],
    );
  }
}

Future<Room> makePayment(String Deluxe, String Standard, String Tent,
    String order_id, String name, String email, String contact) async {
  final http.Response response = await http.post(
    'https://the-palm-payment.herokuapp.com/getPaymentLink',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'Deluxe': Deluxe,
      'Standard': Standard,
      'Tent': Tent,
      'order_id': order_id,
      'name': name,
      'email': email,
      'contact': contact
    }),
  );

  if (response.statusCode == 200) {
    // Map<String, String> values;

    values = json.decode(response.body);
    print(values);
    values = values['data'];
    link = values['short_url'];
    print(link);

    // if (values.length > 0) {
    //   Map<String, dynamic> map;
    //   for (int i = 0; i < values.length; i++) {
    //     if (values[i] != null) {
    //       Map<String, dynamic> map = values[i];
    //       String link = map['short_url'];
    //       print('Id-------${map['short_url']}');
    //     }
    //   }
    //   return map['short_url'];
    // }
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
                  child: Text('Book Room'),
                  onPressed: () {
                    setState(() {
                      _futureRoom = makePayment(
                          deluxeCounter.value.toString(),
                          standardCounter.value.toString(),
                          bambooCounter.value.toString(),
                          DateTime.now().toString(),
                          _nameController.toString(),
                          _emailController.toString(),
                          _contactController.toString());
                      print(deluxeCounter.value.toString());
                    });
                  },
                ),
              ],
            )
          : FutureBuilder<Room>(
              future: _futureRoom,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return MaterialButton(
                    onPressed: () {
                      js.context.callMethod('open', [link]);
                      // html.window.open(link, "_blank");
                    },
                    child: Text('Pay'),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                return CircularProgressIndicator();
              },
            ),
    );
  }
}
