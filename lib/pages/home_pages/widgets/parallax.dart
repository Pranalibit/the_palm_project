import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';



class Parallax extends StatefulWidget {
  const Parallax({
    Key key,
    @required this.rate,
    @required this.offsetTop,
    @required this.offsetLeft,
    @required this.height,
    @required this.image,
    @required this.text,
  }) : super(key: key);

  final double rate;
  final double offsetTop;
  final double offsetLeft;
  final double height;
  final String image;
  final String text;

  @override
  _ParallaxState createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
    return Positioned(
      bottom: widget.rate + widget.offsetTop,
      left: widget.rate + widget.offsetLeft,
      child: MouseRegion(
        onEnter: (e) {
          cardKey.currentState.toggleCard();
        },
        onExit: (e) {
          cardKey.currentState.toggleCard();
        },
        child: FlipCard(
          key: cardKey,
          front: Container(
            height: widget.height,
            width: 300,
            child: Image.network(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          back: Container(
            width: 280,
            height: widget.height,
            child: Center(
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
