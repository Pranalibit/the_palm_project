// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/enter_details.dart';
import 'package:palm/pages/payment_pages/widgets/check_availiability.dart';
import 'package:palm/pages/payment_pages/widgets/model.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class ContinueBooking extends StatefulWidget {
  const ContinueBooking({Key key}) : super(key: key);

  @override
  _ContinueBookingState createState() => _ContinueBookingState();
}

class _ContinueBookingState extends State<ContinueBooking> {
  Future<Room> _futureRoom;
  final phoneNumber = const PhoneNumber();
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          setState(() {
            (_futureRoom == null)
                ? _futureRoom = makePayment(
                    userSelection["Deluxe"].toString(),
                    userSelection["Standard"].toString(),
                    userSelection["Tent"].toString(),
                    DateTime.now().toString(),
                    firstNameController.text.toString() +
                        " " +
                        lastNameController.text.toString(),
                    emailController.text.toString(),
                    numberController.text.toString())
                : FutureBuilder<Room>(
                    future: _futureRoom,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return js.context.callMethod('open', [link]);
                        // return MaterialButton(
                        //   onPressed: () {
                        //     js.context.callMethod('open', [link]);
                        //     // html.window.open(link, "_blank");
                        //   },
                        //   child: Text('Pay'),
                        // );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  );

            // print(deluxeCounter.value.toString());
          });
        },
        child: const Text(
          "Continue to Booking",
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.171875,
            fontSize: 25.0,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 255, 255, 255),

            /* letterSpacing: 0.0, */
          ),
        ));
  }
}
