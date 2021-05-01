import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> _colors = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

List<Color> text = [Colors.black, Colors.white, Colors.white, Colors.white];
List<Color> c = [Colors.white, Colors.black, Colors.black, Colors.black];

class rooms extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  Color c1 = Colors.black;
  Color t1 = Colors.white;
  int i = 0;
  Timer timer;
  String url = "https://i.ibb.co/GkZYnwK/room-1.png";
  int prev;
  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        prev = i;
        c[prev % 4] = Colors.black;
        text[prev % 4] = Colors.white;

        url = _colors[(i++) % 4];
        c[i % 4] = Colors.white;
        text[i % 4] = Colors.black;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  void restartTimer() {
    timer.cancel();
    Timer.periodic(Duration(seconds: 5), (timer) {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100.w,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 75,
                    width: 400.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: c[0],
                          // background
                          // foreground
                        ),
                        child: Text('Super Dulex',
                            style: GoogleFonts.oswald(
                              fontSize: 20,
                              color: text[0],
                            )),
                        onPressed: () {
                          setState(() {
                            print(prev % 4);
                            c[i % 4] = Colors.black;
                            text[i % 4] = Colors.white;
                            i = 0;
                            c[0] = Colors.white;
                            text[0] = Colors.black;
                            url = _colors[0];
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 75,
                    width: 400.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: c[1],
                          // background
                          // foreground
                        ),
                        child: Text('Super Dulex',
                            style: GoogleFonts.oswald(
                              fontSize: 20,
                              color: text[1],
                            )),
                        onPressed: () {
                          setState(() {
                            print(prev % 4);
                            c[i % 4] = Colors.black;
                            text[i % 4] = Colors.white;
                            i = 1;
                            c[1] = Colors.white;
                            text[1] = Colors.black;
                            url = _colors[1];
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 75,
                    width: 400.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: c[2],
                          // background
                          // foreground
                        ),
                        child: Text('Super Dulex',
                            style: GoogleFonts.oswald(
                              fontSize: 20,
                              color: text[2],
                            )),
                        onPressed: () {
                          setState(() {
                            print(prev % 4);
                            c[i % 4] = Colors.black;
                            text[i % 4] = Colors.white;
                            i = 2;
                            c[2] = Colors.white;
                            text[2] = Colors.black;
                            url = _colors[2];
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 75,
                    width: 400.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: c[3],
                          // background
                          // foreground
                        ),
                        child: Text('Super Dulex',
                            style: GoogleFonts.oswald(
                              fontSize: 20,
                              color: text[3],
                            )),
                        onPressed: () {
                          setState(() {
                            print(prev % 4);
                            c[i % 4] = Colors.black;
                            text[i % 4] = Colors.white;
                            i = 3;
                            c[3] = Colors.white;
                            text[3] = Colors.black;
                            url = _colors[3];
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /*Row(
                        children: [
                          _rb(context),
                          SizedBox(
                            height: 10,
                          ),
                          _rb(context),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          _rb(context),
                          SizedBox(
                            height: 10,
                          ),
                          _rb(context),
                        ],
                      ),*/
                ],
              ),
              SizedBox(
                width: 200.w,
              ),
              AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(child: child, scale: animation);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    height: 400,
                    width: 500.w,
                    key: ValueKey<String>(url),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        image: NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        )
      ],
    ));
  }
}
