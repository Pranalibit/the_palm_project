import 'dart:async';
import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> _images = [
  'https://source.unsplash.com/1600x900/?hotel',
  'https://source.unsplash.com/1600x900/?bamboo,house',
  'https://source.unsplash.com/1600x900/?tents',
  'https://source.unsplash.com/1600x900/?hotelrooms',
  'https://source.unsplash.com/1600x900/?mountians'
];

List<String> _titles = [
  'Super Deluxe',
  'Bamboo house',
  'Cozy Tents',
  'Standard Rooms',
];
List<Color> text = [Colors.black, Colors.white, Colors.white, Colors.white];
List<Color> c = [Colors.white, Colors.black, Colors.black, Colors.black];

class Rooms_Mobile extends StatelessWidget {
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
  String url = _images[0];
  String title = _titles[0];
  int prev;
  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      setState(() {
        prev = i;
        c[prev % 4] = Colors.black;
        text[prev % 4] = Colors.white;

        url = _images[(i++) % 4];
        title = _titles[(i - 1) % 4];
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
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                child: Column(children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Explore our Rooms",
                          style: GoogleFonts.oswald(
                            fontSize: headline5.w,
                            color: Colors.white,
                          ))),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Stack(
                children: [
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return ScaleTransition(child: child, scale: animation);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        height: 400,
                        key: ValueKey<String>(url),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: NetworkImage(url),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        color: secondaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: GoogleFonts.oswald(
                            fontSize: subtitle1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
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
