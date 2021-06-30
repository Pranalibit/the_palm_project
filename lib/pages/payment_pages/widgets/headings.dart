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

class CheckoutHeadings extends StatefulWidget {
  final String text;
  final double left;
  final double right;
  CheckoutHeadings({@required this.text, this.right, this.left});
  @override
  _CheckoutHeadingsState createState() => _CheckoutHeadingsState();
}

class _CheckoutHeadingsState extends State<CheckoutHeadings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32),
      child: Text(
        widget.text,
        textAlign: TextAlign.left,
        style: GoogleFonts.oswald(
            color: Colors.grey,
            fontSize: 24,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
