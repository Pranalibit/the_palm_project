import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Headings extends StatefulWidget {
  final String text;
  final double top;
  Headings({@required this.text, this.top});

  @override
  _HeadingsState createState() => _HeadingsState();
}

class _HeadingsState extends State<Headings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: widget.top, left: 75.0),
      child: Text(
        widget.text,
        textAlign: TextAlign.left,
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 36,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}

