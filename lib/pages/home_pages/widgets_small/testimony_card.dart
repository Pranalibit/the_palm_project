import 'package:flutter/material.dart';

import 'package:the_palm_project/utils/constant.dart';

class TestimonyCard extends StatelessWidget {
  const TestimonyCard({
    @required this.name,
    @required this.review,
    @required this.spotlight,
  });

  final String name;
  final String review;
  final bool spotlight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 210,
        height: 328,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 210,
                height: 89,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
              ),
            ),
            Positioned(
                top: 89,
                left: 0,
                child: Container(
                    width: 210,
                    height: 259,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 248, 1),
                    ))),
            Positioned(
                top: 156,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      height: 1.4285714285714286),
                )),
            Positioned(
                top: 20,
                left: 55,
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/extras/person.png'),
                          fit: BoxFit.fitWidth),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(100, 100)),
                    ))),
            Positioned(
                top: 122,
                left: 12,
                child: Container(
                    width: 29,
                    height: 29,
                    decoration: BoxDecoration(),
                    child: Stack(children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.format_quote_rounded,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ]))),
            Positioned(
                bottom: 12,
                right: 12,
                child: Container(
                    width: 29,
                    height: 29,
                    decoration: BoxDecoration(),
                    child: Stack(children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Icon(
                          Icons.format_quote_rounded,
                          color: primaryColor,
                        ),
                      ),
                    ]))),
            Positioned(
              top: 187,
              left: 0,
              child: Container(
                width: 210,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    review,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        height: 1.4285714285714286),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
