import 'package:flutter/material.dart';

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
    var d = 35;
    double h1 = 300;
    double h2 = 400;
    double h3 = 380;
    double h4 = 300;
    double h5 = h2;
    double h6 = 350;
    double b1 = 250;
    double b2 = 350;
    double b3 = 220;
    double l = 140;
    return Container(
      height: 1000,
      child: Stack(
        children: <Widget>[
          Parallax(
            rate: widget.rate,
            offsetTop: offsetTop,
            offsetLeft: offsetLeft + l,
            height: h1,
            image: "https://source.unsplash.com/featured/?nature",
            text: 'Travelling opens new doors to mind!\n- Mihir Tale',
          ),
          Parallax(
            rate: widget.rate,
            offsetTop: offsetTop + h1 + d,
            offsetLeft: offsetLeft + l,
            height: h2,
            image: "https://source.unsplash.com/featured/?hotel",
            text: 'New Experiences are awesome.\n Laukik Avhad',
          ),
          Parallax(
            rate: widget.rate,
            offsetTop: offsetTop + b1,
            offsetLeft: offsetLeft + l + 300 + d,
            height: h3,
            image: "https://source.unsplash.com/featured/?scenic",
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
          Parallax(
            rate: widget.rate,
            offsetTop: offsetTop + b1 + h3 + d,
            offsetLeft: offsetLeft + l + 300 + d,
            height: h4,
            image: "https://source.unsplash.com/featured/?sky",
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
          Parallax(
            rate: widget.rate,
            offsetTop: offsetTop + b2,
            offsetLeft: offsetLeft + l + 300 + d + 300 + d,
            height: h5,
            image: "https://source.unsplash.com/featured/?valley",
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
          Parallax(
            rate: widget.rate,
            offsetTop: offsetTop + b3,
            offsetLeft: offsetLeft + l - 300 - d,
            height: h6,
            image: "https://source.unsplash.com/featured/?beach",
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
        ],
      ),
    );
  }
}
