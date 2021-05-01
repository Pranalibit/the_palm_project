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
                      begin: Alignment.bottomRight,
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
          right: 25,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Location',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 50,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextButton(
                    onPressed: () {
                      html.window.open(google_maps_link, 'new tab');
                    },
                    child: Text(
                      'Google Maps',
                      style: TextStyle(color: Colors.white),
                    ),
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
