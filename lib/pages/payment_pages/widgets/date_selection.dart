// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:ui' as ui;
class CalendarBox extends StatelessWidget {
  const CalendarBox({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 712.0,
      height: 591.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Stack(
          clipBehavior: Clip.none, fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            kIsWeb
                ? const SizedBox.shrink()
                : ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: SizedBox(
                        width: 712.0,
                        height: 591.0,
                        child: BackdropFilter(
                            filter: ui.ImageFilter.blur(
                              sigmaX: 25.0,
                              sigmaY: 25.0,
                            ),
                            child: Container(
                                color: Colors.black.withOpacity(0.0)))),
                  ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                color: const Color.fromARGB(89, 255, 255, 255),
              ),
            )
          ]),
    );
  }
}