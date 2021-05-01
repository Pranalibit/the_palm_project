import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'booknow_alert.dart';

class Floating_Book_Now extends StatelessWidget {
  const Floating_Book_Now({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 10,
      child: RaisedButton(
        color: primaryColor,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => BookNowAlert(),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40.h,
            width: 100.w,
            child: Container(
              // decoration: BoxDecoration(
              //     shape: BoxShape.rectangle,
              //     border: Border.all(width: 2, color: Colors.black)),
              child: Text(
                "Book Now",
                style: GoogleFonts.oswald(
                  fontSize: headline5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
