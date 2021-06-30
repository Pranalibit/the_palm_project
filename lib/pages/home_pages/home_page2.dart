

import "package:flutter/material.dart";
import 'package:flutter_screenutil/screenutil_init.dart';

import 'package:the_palm_project/pages/home_pages/widgets_small/about_us_mobile.dart';
import 'package:the_palm_project/pages/home_pages/widgets_small/activities.dart';
import 'package:the_palm_project/pages/home_pages/widgets_small/ammenities_mobile.dart';
import 'package:the_palm_project/pages/home_pages/widgets_small/home_page_carousel.dart';
import 'package:the_palm_project/pages/home_pages/widgets_small/floating_book_now.dart';
import 'package:the_palm_project/pages/home_pages/widgets_small/home_page_drawer.dart';
import 'package:the_palm_project/pages/home_pages/widgets_small/rooms_mobile.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'widgets_small/gallery.dart';
import 'widgets_small/location.dart';
import 'widgets_small/footer.dart';
import 'widgets_small/testimonial.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(411, 731),
      allowFontScaling: true,
      builder: () => Scaffold(
          drawer: Home_Page_Drawer(),
          body: Stack(
            children: [
              ListView(
                children: [
                  Stack(
                    children: [
                      Container(
                        color: secondaryColor,
                        height: 731.h,
                        child: CarouselWidget_Mobile(),
                      ),
                      Floating_Logo_Mobile(),
                    ],
                  ),
                  About_Us_Mobile(),
                  Rooms_Mobile(),
                  Ammenities_Mobile(),
                  Gallery(
                    rate: rate,
                  ),
                  Activity(
                    rate: rate,
                  ),
                  Container(
                    width: 200,
                    child: Testimonial(),
                  ),
                  Location(width: width),
                  Footer(width: width),
                ],
              ),
              Drawer_Button(),
              Floating_Book_Now(),
            ],
          )),
    );
  }
}

class Floating_Logo_Mobile extends StatelessWidget {
  const Floating_Logo_Mobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120.h,
        width: 150.w,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          children: [
            Container(
              height: 10,
              width: 100.w,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
                  width: 70.r,
                  height: 70.r,
                  child: Image.asset("assets/logo/Logo.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Drawer_Button extends StatelessWidget {
  const Drawer_Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: padding_from_top,
      left: 0,
      child: MaterialButton(
        color: Colors.black,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40.r,
            width: 40.r,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: primaryColor)),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    width: 20.r,
                    height: 2.r,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Container(
                    width: 20.r,
                    height: 2.r,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Container(
                    width: 20.r,
                    height: 2.r,
                    color: Colors.white,
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
