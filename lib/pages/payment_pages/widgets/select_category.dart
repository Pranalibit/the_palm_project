// @dart=2.9
import 'package:flutter/material.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Select a category''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.171875,
        fontSize: 48.0,
        fontFamily: 'Oswald',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
