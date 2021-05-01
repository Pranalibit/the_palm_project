import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

//Icons
List<IconData> _icons = [
  Icons.ac_unit,
  Icons.restaurant,
  Icons.cleaning_services,
  Icons.hot_tub,
  Icons.room_service_outlined,
  Icons.park
];

List<String> _ammenitites = [
  "Air Conditioned",
  "Restaurant",
  "House Keeping",
  "Hot Water",
  "Dining service",
  "Private Lawns and  Sitouts"
];

//Live List parameters
final options = LiveOptions(
  delay: Duration(seconds: 1),
  showItemInterval: Duration(milliseconds: 500),
  showItemDuration: Duration(seconds: 1),
  visibleFraction: 0.05,
  reAnimateOnVisibility: false,
);

// Build animated item (helper for all examples)
Widget buildAnimatedItem(
  BuildContext context,
  int index,
  Animation<double> animation,
) =>
    // For example wrap with fade transition
    FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      // And slide transition
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        // Paste you Widget
        child: Column(
          children: [
            Icon(
              _icons[index],
              color: secondaryColor,
            ),
            Text(
              _ammenitites[index],
              style: GoogleFonts.oswald(
                fontSize: subtitle1,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );

class Ammenities_Mobile extends StatelessWidget {
  Color _card_color = Colors.red;
  Color _border_color = Colors.red;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20.r)),
                      color: primaryColor,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.r)),
                        color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text(
                  "Amenities",
                  style: GoogleFonts.oswald(
                    fontSize: headline5,
                    color: secondaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Amm_Card_Filled(card_color: Colors.red, index: 0),
                  // Amm_Card_Filled(card_color: Colors.blue, index: 1),
                  Amm_Border_Card(border_color: Colors.red, index: 0),
                  Amm_Border_Card(border_color: Colors.blue, index: 1),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Amm_Border_Card(border_color: Colors.green, index: 2),
                  Amm_Border_Card(border_color: Colors.cyan, index: 3),
                  // Amm_Card_Filled(card_color: Colors.green, index: 2),
                  // Amm_Card_Filled(card_color: Colors.cyan, index: 3),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Amm_Card_Filled(card_color: Colors.amber, index: 4),
                  // Amm_Card_Filled(card_color: Colors.pink, index: 5),
                  Amm_Border_Card(border_color: Colors.amber, index: 4),
                  Amm_Border_Card(border_color: Colors.purple, index: 5),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20.r)),
                      color: primaryColor,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20.r)),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Amm_Border_Card extends StatelessWidget {
  const Amm_Border_Card({
    Key key,
    @required Color border_color,
    @required this.index,
  })  : _border_color = border_color,
        super(key: key);

  final Color _border_color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: _border_color),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icons[index],
              color: _border_color,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              _ammenitites[index],
              textAlign: TextAlign.center,
              style: GoogleFonts.oswald(
                fontSize: subtitle1,
                color: _border_color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Amm_Card_Filled extends StatelessWidget {
  const Amm_Card_Filled({
    Key key,
    @required Color card_color,
    @required this.index,
  })  : _card_color = card_color,
        super(key: key);

  final Color _card_color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _card_color,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(_icons[index]),
            SizedBox(
              height: 20,
            ),
            Text(
              _ammenitites[index],
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.oswald(fontSize: subtitle1, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
