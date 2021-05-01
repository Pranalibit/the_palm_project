import 'dart:html';
import 'globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomCard extends StatefulWidget {
  final text;
  RoomCard({this.text});

  @override
  _RoomCardState createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
  int value = 0;
  void _increment() {
    setState(() {
      print(value);
      if (value >= 4) {
        value = 4;
      } else {
        value++;
      }
    });
  }

  void _decrement() {
    setState(() {
      print(value);
      if (value <= 0) {
        value = 0;
      } else {
        value--;
      }
    });
  }

  void roomLogic() {
    setState(() {
      if (status == roomCount['Regular']) {
        roomCount['Regular']--;
        globals.maxRoom = globals.maxRoom - 1;
      } else if (status == roomCount['Deluxe']) {
        roomCount['Deluxe']--;
        globals.maxRoom = globals.maxRoom - 1;
      } else {
        roomCount['Bamboo']--;
        globals.maxRoom = globals.maxRoom - 1;
      }
    });
  }

  var status;
  var _currentItemSelected = "Regular";
  bool valuefirst = false;
  var room = ["Regular", "Deluxe", "Bamboo"];
  Map<String, int> roomCount = {'Delux': 5, 'Bamboo': 6, 'Regular': 9};
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        width: 350,
        height: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            AppBar(
              title: Text("Room ${widget.text + 1}"),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Types',
                      style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                    ),
                    new DropdownButton<String>(
                      items: room.map((String dropDownStringItem) {
                        return new DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: new Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        setState(() {
                          status = _currentItemSelected;
                          this._currentItemSelected = newValueSelected;
                          print(status);
                          roomLogic();
                          print(status);
                        });
                      },
                      value: _currentItemSelected,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Number of Guests Included',
                      style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline_rounded),
                      onPressed: _increment,
                      color: Colors.black,
                    ),
                    Text(
                      '$value',
                      style: TextStyle(color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove_circle_outline_rounded),
                      onPressed: _decrement,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Include Breakfast/Lunch',
                      style: GoogleFonts.oswald(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Checkbox(
                      checkColor: Colors.black,
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
