// @dart=2.9
import 'package:flutter/material.dart';

class DetailsBox extends StatelessWidget {
  const DetailsBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 981.0,
      height: 698.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: const Color.fromARGB(127, 0, 0, 0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
