// @dart=2.9
import 'package:flutter/material.dart';

class RoomCost extends StatefulWidget {
  final int price;
  const RoomCost({Key key, @required this.price}) : super(key: key);
  @override
  _RoomCostState createState() => _RoomCostState();
}

class _RoomCostState extends State<RoomCost> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.price}",
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
