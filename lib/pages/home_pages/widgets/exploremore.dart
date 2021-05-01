import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Column(children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          width: 100.w,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Hello",
                                style: GoogleFonts.oswald(
                                  fontSize: headline5.w,
                                  color: secondaryGray,
                                ))),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 100.w,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("We Are The Palm ",
                                style: GoogleFonts.oswald(
                                  fontSize: headline4.w,
                                  color: Colors.white,
                                ))),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100.w,
                    ),
                    Container(
                        height: 600,
                        width: 520.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.ibb.co/xf98dnz/d-Zb-Blss3-Fy-E.png'),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: 300,
                          width: 500.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://i.ibb.co/py49Lpk/Koei-7y-Yt-Io.png'),
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                    ),
                    Container(
                      height: 300,
                      width: 400.w,
                      child: Column(
                        children: [
                          Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              style: GoogleFonts.oswald(
                                fontSize: headline6.w,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 50,
                              width: 120,
                              // child: RaisedButton(
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(10.0),
                              //   ),
                              //   onPressed: () {},
                              //   color: primaryColor,
                              //   textColor: Colors.white,
                              //   padding: EdgeInsets.all(10),
                              //   child: Text("Learn More",
                              //       style: GoogleFonts.oswald(
                              //           fontSize: headline6.w,
                              //           color: Colors.white)),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
