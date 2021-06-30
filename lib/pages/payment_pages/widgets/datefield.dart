import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'globals.dart';

class FromDateField extends StatefulWidget {
  @override
  _FromDateFieldState createState() => _FromDateFieldState();
}

class _FromDateFieldState extends State<FromDateField> {
  var formatter = new DateFormat('dd-MM-yyyy');

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
      padding: const EdgeInsets.only(left: 290),
      child: Row(
        children: <Widget>[
          Text('From',
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600)),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 16.0, right: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              onPressed: () async {
                fromDate.value = await selectDate(context, fromDate.value);
                fromDateVar = formatter.format(fromDate.value);
                setState(() {
                  print(fromDate.value);
                });
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
                '${formatter.format(fromDate.value)}',
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

class ToDateField extends StatefulWidget {
  @override
  _ToDateFieldState createState() => _ToDateFieldState();
}

class _ToDateFieldState extends State<ToDateField> {
  var formatter = new DateFormat('dd-MM-yyyy');

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
      padding: const EdgeInsets.only(left: 290, top: 100),
      child: Row(
        children: <Widget>[
          Text(
            'To',
            style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 34.0, right: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              onPressed: () async {
                toDate.value = await selectDate(context, toDate.value);
                toDateVar = formatter.format(toDate.value);
                setState(() {
                  print(toDate.value);
                });
              },
            ),
          ),
          Container(
            width: 200.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 46.0, top: 8.0, bottom: 8.0, right: 8.0),
              child: Text(
                '${formatter.format(toDate.value)}',
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
