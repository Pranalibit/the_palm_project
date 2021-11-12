// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/transform.dart';

class ButtonUI extends StatelessWidget {
  const ButtonUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.426361083984375,
      height: 28.426406860351562,
      child: Stack(
          clipBehavior: Clip.none, fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 14.14208984375,
              top: 7.213202953338623,
              right: null,
              bottom: null,
              width: 10.0,
              height: 30.0,
              child: TransformHelper.rotate(
                  a: 0.71,
                  b: 0.71,
                  c: -0.71,
                  d: 0.71,
                  child: SizedBox(
                    width: 10.0,
                    height: 30.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Container(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )),
            ),
            Positioned(
              left: 0.0,
              top: 21.21320343017578,
              right: null,
              bottom: null,
              width: 30.0,
              height: 10.0,
              child: TransformHelper.rotate(
                  a: 0.71,
                  b: 0.71,
                  c: -0.71,
                  d: 0.71,
                  child: SizedBox(
                    width: 30.0,
                    height: 10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Container(color: Colors.black
                          // Color.fromARGB(
                          //     255, 255, 255, 255),
                          ),
                    ),
                  )),
            )
          ]),
    );
  }
}
