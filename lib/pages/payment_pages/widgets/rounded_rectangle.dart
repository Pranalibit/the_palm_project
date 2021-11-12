// @dart=2.9
import 'package:flutter/material.dart';

class RoundedRectangle1 extends StatelessWidget {
  const RoundedRectangle1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364.0,
      height: 427.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
          bottomRight: Radius.circular(100.0),
          bottomLeft: Radius.circular(0.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
          bottomRight: Radius.circular(100.0),
          bottomLeft: Radius.circular(0.0),
        ),
        child: Container(
          color: const Color.fromARGB(255, 255, 209, 0),
        ),
      ),
    );
  }
}

class RoomName extends StatelessWidget {
  const RoomName({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Rooms",
      overflow: TextOverflow.visible,
      textAlign: TextAlign.right,
      style: TextStyle(
        height: 1.171875,
        fontSize: 40.0,
        fontFamily: 'Oswald',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
