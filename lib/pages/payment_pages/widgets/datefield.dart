import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DateField extends StatefulWidget {
  final String text;
  final double top,left;

  DateField({@required this.text, this.top, this.left});

  @override
  _DateFieldState createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  static const double top = 100;
  static const double left = 16.0;
  var formatter = new DateFormat('dd-MM-yyyy');
  DateTime fromDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime toDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  Future<DateTime> selectDate(BuildContext context, DateTime _date) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2021),
      lastDate: DateTime(2050),
    );

    if (picked != null) {
      _date = picked;
    }
    return _date;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 290, top: top),
      child: Row(
        children: <Widget>[
          Text(widget.text,
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600)),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: left,right: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              onPressed: () async {
                fromDate = await selectDate(context, fromDate);
                setState(() {});
              },
            ),
          ),
          Container(
            width: 200.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15.0)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 46.0, top: 8.0, bottom: 8.0, right: 8.0),
              child: Text(
                '${formatter.format(fromDate)}',
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
