// @dart=2.9
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'globals.dart';

class FromDate extends StatefulWidget {
  const FromDate({Key key}) : super(key: key);

  @override
  _FromDateState createState() => _FromDateState();
}

class _FromDateState extends State<FromDate> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async {
        fromDate.value = await selectDate(context, fromDate.value);
        toDate.value = DateTime(
            fromDate.value.year, fromDate.value.month, fromDate.value.day + 1);
      },
      child: SizedBox(
        width: 50.0,
        height: 50.0,
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.asset(
            "assets/images/061efcf85b17e2c0ab433edb34d536f8a3f44d50.png",
            color: null,
            fit: BoxFit.contain,
            width: 50.0,
            height: 50.0,
            colorBlendMode: BlendMode.dstATop,
          ),
        ),
      ),
    );
  }
}

class FromDate_day extends StatefulWidget {
  const FromDate_day({Key key}) : super(key: key);

  @override
  _FromDate_dayState createState() => _FromDate_dayState();
}

class _FromDate_dayState extends State<FromDate_day> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: fromDate,
      builder: (context, value, widget) {
        return Text(
          "${fromDate.value.day}",
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 144.0,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        );
      },
    );
  }
}

class FromDate_Month extends StatefulWidget {
  const FromDate_Month({Key key}) : super(key: key);

  @override
  _FromDate_MonthState createState() => _FromDate_MonthState();
}

class _FromDate_MonthState extends State<FromDate_Month> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: fromDate,
      builder: (context, value, widget) {
        return Text(
            "${months[fromDate.value.month - 1]}, ${fromDate.value.year}",
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: const TextStyle(
              height: 1.171875,
              fontSize: 48.0,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),
            ));

        /* letterSpacing: 0.0, */
      },
    );
  }
}

var formatter = DateFormat('dd-MM-yyyy');

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
