import 'package:flutter/material.dart';

import 'package:the_palm_project/utils/constant.dart';
import 'dart:html' as html;

class Location extends StatelessWidget {
  const Location({
    @required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: ClipRect(
            child: Align(
              widthFactor: kWidthFactor,
              child: Container(
                width: width,
                height: kHeightImage,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Location_Image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: ClipRect(
            child: Align(
              widthFactor: kWidthFactor,
              child: Container(
                width: width,
                height: kHeightImage,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.center,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 1),
                        Color.fromRGBO(0, 0, 0, 0)
                      ]),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Location',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: headline5,
                ),
              ),
              TextButton(
                onPressed: () {
                  html.window.open(google_maps_link, 'new tab');
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    'Google Maps',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
