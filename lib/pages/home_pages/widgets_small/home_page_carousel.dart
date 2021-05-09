

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:the_palm_project/utils/constant.dart';

final List<String> imgList = [
  'https://source.unsplash.com/1600x900/?nature,water',
  'https://source.unsplash.com/1600x900/?nature',
  'https://source.unsplash.com/1600x900/?scenic',
  'https://source.unsplash.com/1600x900/?hotel',
  'https://source.unsplash.com/1600x900/?mountians'
];

class CarouselWidget_Mobile extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget_Mobile> {
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
    return Stack(children: [
      Container(
        child: CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              disableCenter: true,
              height: double.infinity,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? primaryColor
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    ]);
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
    int index = (idx - 10000) % imgList.length;
    return index;
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          height: 1000,
          child: ClipRRect(
              child: Image.network(
            item,
            fit: BoxFit.cover,
          )),
        ))
    .toList();
