// @dart=2.9
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

String link;

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
    Map<String, dynamic> values;

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
