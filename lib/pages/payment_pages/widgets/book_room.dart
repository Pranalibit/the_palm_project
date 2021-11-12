// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/checkout.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/room_count.dart';


class BookRoom extends StatefulWidget {
  const BookRoom({Key key}) : super(key: key);

  @override
  _BookRoomState createState() => _BookRoomState();
}

class _BookRoomState extends State<BookRoom> {
  final room = const RoomCount();
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Checkout1()),
        );
      },
      child: const Text(
        "Book Room",
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 36.0,
          fontFamily: 'Oswald',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}

