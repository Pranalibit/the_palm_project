import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class About_Us_Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              child: Column(children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hello,",
                        style: GoogleFonts.oswald(
                          fontSize: headline6.w,
                          color: secondaryGray,
                        ))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("We Are The Palm ",
                        style: GoogleFonts.oswald(
                          fontSize: headline5.w,
                          color: Colors.white,
                        )))
              ]),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://i.ibb.co/xf98dnz/d-Zb-Blss3-Fy-E.png'),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: GoogleFonts.oswald(
                fontSize: subtitle1.w,
                color: secondaryGray,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
