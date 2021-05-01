import 'package:flutter/material.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'testimony_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 800,
      color: Color(0xfff8f8f8),
      alignment: Alignment.center,
      child: Container(
        width: 750.0,
        height: 750.0,
        decoration: BoxDecoration(
          color: Color(0xffFDF8E1),
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: width * 0.84,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Testimonials",
                    style:
                        TextStyle(fontSize: headline4, color: secondaryColor),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TestimonyCard(
                  name: 'Theresa Webb',
                  review:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                  spotlight: false,
                ),
                SizedBox(
                  width: 50.w,
                ),
                TestimonyCard(
                  name: 'Theresa Webb',
                  review:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                  spotlight: false,
                ),
                SizedBox(
                  width: 50.w,
                ),
                TestimonyCard(
                  name: 'Theresa Webb',
                  review:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                  spotlight: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
