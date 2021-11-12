// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/pages/payment_pages/widgets/check_availiability.dart';

int getRoomCount() {
  int count = 0;
  print(userSelection);
  for (var i = 0; i < userSelection.length; i++) {
    count = count + userSelection[roomName[i]];
  }
  return count;
}

class RoomCount extends StatefulWidget {
  const RoomCount({Key key}) : super(key: key);

  @override
  _RoomCountState createState() => _RoomCountState();
}

class _RoomCountState extends State<RoomCount> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${getRoomCount()}",
      overflow: TextOverflow.visible,
      textAlign: TextAlign.right,
      style: const TextStyle(
        height: 1.171875,
        fontSize: 25.0,
        fontFamily: 'Oswald',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
