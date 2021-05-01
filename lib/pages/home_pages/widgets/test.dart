/// Flutter code sample for AnimatedSwitcher

// This sample shows a counter that animates the scale of a text widget
// whenever the value changes.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String url = "https://i.ibb.co/GkZYnwK/room-1.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(url),
                    ),
                  )),
            ),
          ),
          ElevatedButton(
            child: const Text('Increment'),
            onPressed: () {
              setState(() {
                url =
                    'https://www.marinabaysands.com/content/dam/singapore/marinabaysands/master/main/home/hotel/rooms-suites/rooms-suites-masthead-1000x908.jpg';
              });
            },
          ),
        ],
      ),
    );
  }
}
