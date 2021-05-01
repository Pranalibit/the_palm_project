import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'carosul1.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'booknow_alert.dart';

class Carousel extends StatelessWidget {
  // PageController _pageController;
  // ValueNotifier<int> _pageNumber;

  final c = CarouselWidget();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Center(child: CarouselWidget()),
            // Container(
            //   width: 1280.w,
            //   height: 600.h,
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [
            //           Color.fromRGBO(0, 0, 0, 1),
            //           Color.fromRGBO(0, 0, 0, 0)
            //         ]),
            //   ),
            // ),
            // Positioned(
            //   left: 150,
            //   top: 300,
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: <Widget>[
            //         Text("SWIPE", style: TextStyle(color: Colors.white)),
            //         Icon(
            //           Icons.arrow_forward,
            //           color: Colors.white,
            //         ),
            //       ]),
            // ),
            // Positioned(
            //   right: 150,
            //   top: 300,
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: <Widget>[
            //         Icon(
            //           Icons.arrow_back,
            //           color: Colors.white,
            //         ),
            //         Text("SWIPE", style: TextStyle(color: Colors.white)),
            //       ]),
            // ),
            Positioned(
              bottom: 10,
              left: 100.w,
              child: Container(
                height: 50,
                width: 120,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => BookNowAlert(),
                    );
                  },
                  color: primaryColor,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Text("Book Now",
                      style: GoogleFonts.oswald(
                          fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 30.w,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                child: Container(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: <Widget>[
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("Welcome To   ",
                              style: GoogleFonts.oswald(
                                fontSize: headline5,
                                color: Colors.white,
                              ))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("The Palm ",
                              style: GoogleFonts.oswald(
                                fontSize: headline3,
                                color: Colors.white,
                              )))
                    ]),
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
