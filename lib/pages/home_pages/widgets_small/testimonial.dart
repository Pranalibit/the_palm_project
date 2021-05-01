import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'testimony_card.dart';

class Testimonial extends StatefulWidget {
  @override
  _TestimonialState createState() => _TestimonialState();
}

class _TestimonialState extends State<Testimonial> {
  void nextSlide() {
    _pageNumber.value += 1;
    _pageController.animateToPage(
      _pageNumber.value,
      duration: Duration(milliseconds: 10),
      curve: Curves.easeIn,
    );
  }

  PageController _pageController;
  ValueNotifier<int> _pageNumber;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 10000);
    _pageNumber = ValueNotifier<int>(10000);
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 30.h),
          Align(
              alignment: Alignment.center,
              child: Text("What people have to say!",
                  style: GoogleFonts.oswald(
                    fontSize: headline5,
                    color: secondaryColor,
                  ))),
          Container(
            color: Colors.white,
            width: 411,
            height: 500.h,
            child: Stack(children: [
              Center(
                child: Container(
                  color: primaryColor,
                  height: 50,
                  width: double.infinity,
                ),
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 350,
                  child: CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                        disableCenter: true,
                        autoPlay: true,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageSliders.map((url) {
                      int index = imageSliders.indexOf(url);
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? primaryColor
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ]),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  void previousSlide() {
    _pageNumber.value -= 1;
    _pageController.animateToPage(
      _pageNumber.value,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  int getRealIndex(int idx) {
    int index = (idx - 10000) % imageSliders.length;
    return index;
  }
}

final List<Widget> imageSliders = [
  TestimonyCard(
    name: 'Theresa Webb',
    review:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    spotlight: false,
  ),
  TestimonyCard(
    name: 'Theresa Webb',
    review:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    spotlight: false,
  ),
  TestimonyCard(
    name: 'Theresa Webb',
    review:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    spotlight: false,
  ),
];
