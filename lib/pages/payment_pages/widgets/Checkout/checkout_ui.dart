// @dart=2.9
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckoutUI extends StatelessWidget {
  const CheckoutUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 539.0,
      height: 814.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: kIsWeb
            ? []
            : [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
