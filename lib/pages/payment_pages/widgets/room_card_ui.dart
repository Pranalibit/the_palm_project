// @dart=2.9
import 'package:flutter/material.dart';

class RoomUI1 extends StatelessWidget {
  const RoomUI1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      top: 0.0,
      right: null,
      bottom: null,
      width: 1200.0,
      height: 418.0,
      child: Container(
        width: 1200.0,
        height: 418.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

class RoomUI2 extends StatelessWidget {
  const RoomUI2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
