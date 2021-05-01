import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

class Ctest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: GooeyCarousel(
          children: <Widget>[
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ],
        ));
  }
}
