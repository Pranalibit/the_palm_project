// @dart=2.9
import 'package:flutter/material.dart';

class Image1 extends StatelessWidget {
  const Image1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 1904.0,
        height: 851.0,
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.asset(
            "assets/images/image1.png",
            color: null,
            fit: BoxFit.cover,
            width: 1904.0,
            height: 851.0,
            // colorBlendMode: BlendMode.dstATop,
          ),
        ));
  }
}
