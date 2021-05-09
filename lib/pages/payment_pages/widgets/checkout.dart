import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'details.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    print('Under checkout');
    return Padding(
        padding: const EdgeInsets.only(left: 400, top: 200),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Dates',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Rooms',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Type1 × 2',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Type2 × 3',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Extra Bedding',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Service Charges',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              'Taxes',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oswald(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            'WED 02 FEB - THU 03 FEB',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            '5',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            'Rs 1500',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            'Rs 2000',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            'Rs 600',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            'Rs 200',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 32, right: 12.0),
                          child: Text(
                            'Rs 100',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
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
                      onPressed: () {
                        print("Clicked on continue booking");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage()));
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
                  )
                ])));
  }
}
