// @dart=2.9
import 'package:flutter/material.dart';
import 'from_date.dart';
import 'globals.dart';

class ToDate extends StatefulWidget {
  const ToDate({Key key}) : super(key: key);

  @override
  State<ToDate> createState() => _ToDateState();
}

class _ToDateState extends State<ToDate> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async {
        toDate.value = await selectDate(context, toDate.value);
      },
      child: SizedBox(
        width: 50.0,
        height: 50.0,
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.asset(
            "assets/images/b732cad60c4c035a6c18cd5ce58dfdf78bd497e5.png",
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

class ToDate_Day extends StatefulWidget {
  const ToDate_Day({Key key}) : super(key: key);

  @override
  _ToDate_DayState createState() => _ToDate_DayState();
}

class _ToDate_DayState extends State<ToDate_Day> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: toDate,
      builder: (context, value, widget) {
        return Text(
          "${toDate.value.day}",
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

class ToDate_Month extends StatefulWidget {
  const ToDate_Month({Key key}) : super(key: key);

  @override
  _ToDate_MonthState createState() => _ToDate_MonthState();
}

class _ToDate_MonthState extends State<ToDate_Month> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: toDate,
      builder: (context, value, widget) {
        return Text("${months[toDate.value.month - 1]}, ${toDate.value.year}",
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
