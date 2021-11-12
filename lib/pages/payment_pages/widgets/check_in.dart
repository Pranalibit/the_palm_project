// @dart=2.9
import 'package:flutter/material.dart';

class CheckIn extends StatelessWidget {
  const CheckIn({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Check-in",
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.171875,
        fontSize: 36.0,
        fontFamily: 'Oswald',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}


class CheckOut extends StatelessWidget {
  const CheckOut({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Check-out''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.171875,
        fontSize: 36.0,
        fontFamily: 'Oswald',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}