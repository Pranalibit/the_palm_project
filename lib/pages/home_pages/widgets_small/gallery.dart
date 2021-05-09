import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:the_palm_project/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'parallax.dart';

class Gallery extends StatefulWidget {
  const Gallery({
    @required this.rate,
  });

  final double rate;
  final String title = 'Gallery';
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final double offsetTop = 0;
  final double offsetLeft = 250;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var d = 20;
    double h1 = 200;
    double h2 = 230;
    // double h3 = 180;
    // double h4 = 115;
    // double h5 = h2;
    double h6 = 200;
    double b0 = 150;
    // double b1 = 250;
    // double b2 = 350;
    double b3 = 270;
    double l = -30;
    double w = 180;
    return Container(
      color: secondaryColor,
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Align(
              alignment: Alignment.center,
              child: Text("Gallery",
                  style: GoogleFonts.oswald(
                    fontSize: headline5,
                    color: Colors.white,
                  ))),
          Align(
              alignment: Alignment.center,
              child: Text("Discover serenity and peace.",
                  style: GoogleFonts.oswald(
                    fontSize: subtitle1,
                    color: secondaryGray,
                  ))),
          Container(
            height: 650,
            child: Stack(
              children: <Widget>[
                Parallax(
                  rate: widget.rate,
                  offsetTop: offsetTop + b0,
                  offsetLeft: offsetLeft + l,
                  height: h1,
                  image: "https://source.unsplash.com/featured/?nature",
                  text: 'Travelling opens new doors to mind!\n- Mihir Tale',
                ),
                Parallax(
                  rate: widget.rate,
                  offsetTop: offsetTop + h1 + d + b0,
                  offsetLeft: offsetLeft + l,
                  height: h2,
                  image: "https://source.unsplash.com/featured/?hotel",
                  text: 'New Experiences are awesome.\n Laukik Avhad',
                ),
                Parallax(
                  rate: widget.rate,
                  offsetTop: offsetTop + b3,
                  offsetLeft: offsetLeft + l - w - d,
                  height: h6,
                  image: "https://source.unsplash.com/featured/?beach",
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                ),
                Parallax(
                  rate: widget.rate,
                  offsetTop: offsetTop + b3 - h6 - d,
                  offsetLeft: offsetLeft + l - w - d,
                  height: h6,
                  image: "https://source.unsplash.com/featured/?sky",
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
