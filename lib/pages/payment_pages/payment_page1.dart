import 'dart:core';

import 'package:flutter/material.dart';


import 'package:the_palm_project/utils/constant.dart';

import 'widgets/checkout.dart';
import 'widgets/datefield.dart';
import 'widgets/headings.dart';
import 'widgets/rooms.dart';

class PaymentPageLarge extends StatefulWidget {
  @override
  _PaymentPageLargeState createState() => _PaymentPageLargeState();
}

class _PaymentPageLargeState extends State<PaymentPageLarge> {
  Map<String, int> roomCount = {'Delux': 5, 'Bamboo': 6, 'Regular': 9};
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: secondaryColor,
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headings(text: 'Select Dates', top: 65.0),
                  DateField(text: 'From'),
                  DateField(text: 'To', top: 120, left: 34.0),
                  SizedBox(
                    height: 132,
                  ),
                DynamicRooms()
                ],
              ),
              
             CheckOut(),
             
            ],
          )
        ]));
  }
}
