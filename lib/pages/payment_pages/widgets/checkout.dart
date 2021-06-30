import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/auth_dialog.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/datefield.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/globals.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/headings.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'globals.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  var formatter = new DateFormat('dd-MM-yyyy');

  FromDateField fromDateField = new FromDateField();
  ToDateField toDateField = new ToDateField();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 350, top: 200),
        child: Container(
            width: 500.0,
            height: 800.0,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0))),
            child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 32, top: 16.0, bottom: 16.0, right: 16.0),
                      child: Text(
                        'Checkout',
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontSize: 36,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    height: 92.52,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0))),
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CheckoutHeadings(text: 'Dates'),
                          ValueListenableBuilder(
                            valueListenable: standardCounter,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  text:
                                      'Standard Room * ${standardCounter.value}');
                            },
                          ),
                          ValueListenableBuilder(
                            valueListenable: bambooCounter,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  text: 'Bamboo Room * ${bambooCounter.value}');
                            },
                          ),
                          ValueListenableBuilder(
                            valueListenable: deluxeCounter,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  text: 'Deluxe Room * ${deluxeCounter.value}');
                            },
                          ),
                          CheckoutHeadings(text: 'Service Charges'),
                          CheckoutHeadings(text: 'Taxes'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CheckoutHeadings(
                              //Date
                              text:
                                  '${formatter.format(fromDate.value)} - ${formatter.format(toDate.value)}',
                              left: 80.0,
                              right: 12.0),
                          ValueListenableBuilder(
                            valueListenable: standardRoomCost,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  left: 80.0,
                                  right: 12.0,
                                  text: 'Rs ${standardRoomCost.value}');
                            },
                          ),
                          ValueListenableBuilder(
                            valueListenable: bambooRoomCost,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  left: 80.0,
                                  right: 12.0,
                                  text: 'Rs ${bambooRoomCost.value}');
                            },
                          ),
                          ValueListenableBuilder(
                            valueListenable: deluxeRoomCost,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  left: 80.0,
                                  right: 12.0,
                                  text: 'Rs ${deluxeRoomCost.value}');
                            },
                          ),
                          CheckoutHeadings(
                              text: 'Rs 200', left: 80.0, right: 12.0),
                          ValueListenableBuilder(
                            valueListenable: tax,
                            builder: (context, value, widget) {
                              return CheckoutHeadings(
                                  left: 80.0,
                                  right: 12.0,
                                  text: 'Rs ${tax.value}');
                            },
                          ),
                        ])
                  ]),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.arrow_forward_rounded),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ))),
                      onPressed: () async {
                        print("Clicked on continue booking");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthDialog()));
                      },
                      label: Text(
                        'Continue to Booking',
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: CheckoutHeadings(text: 'Total Cost'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 12),
                    child: CheckoutHeadings(text: '${totalCost.value}'),
                  ),
                ])));
  }
}
