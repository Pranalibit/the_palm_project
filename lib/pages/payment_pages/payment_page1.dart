// @dart=2.9
import 'package:flutter/material.dart';

import 'package:palm/pages/payment_pages/widgets/availiabiity_container.dart';
import 'package:palm/pages/payment_pages/widgets/book_room.dart';
import 'package:palm/pages/payment_pages/widgets/book_room_ui.dart';
import 'package:palm/pages/payment_pages/widgets/check_availiability.dart';
import 'package:palm/pages/payment_pages/widgets/from_date.dart';
import 'package:palm/pages/payment_pages/widgets/background.dart';
import 'package:palm/pages/payment_pages/widgets/check_in.dart';
import 'package:palm/pages/payment_pages/widgets/date_selection.dart';

import 'package:palm/pages/payment_pages/widgets/images_loader.dart';
import 'package:palm/pages/payment_pages/widgets/room_group.dart';
import 'package:palm/pages/payment_pages/widgets/rounded_rectangle.dart';
import 'package:palm/pages/payment_pages/widgets/select_category.dart';

import 'widgets/to_date.dart';

class PaymentPageDesktop extends StatefulWidget {
  const PaymentPageDesktop({Key key}) : super(key: key);

  @override
  _PaymentPageDesktopState createState() => _PaymentPageDesktopState();
}

class _PaymentPageDesktopState extends State<PaymentPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
                height: 3710.0,
                child: Stack(children: [
                  SizedBox(
                      width: constraints.maxWidth,
                      child: SizedBox(
                        width: 1904.0,
                        height: 3710.0,
                        child: Stack(
                            clipBehavior: Clip.none,
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Container(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              const Positioned(
                                  left: 0.0,
                                  top: 0.0,
                                  right: null,
                                  bottom: null,
                                  width: 1904.0,
                                  height: 600.0,
                                  child: Image1()),
                              const Positioned(
                                left: -109.0,
                                top: -246.0,
                                right: null,
                                bottom: null,
                                width: 350.0,
                                height: 400.0,
                                child: RoundedRectangle1(),
                              ),
                              const Positioned(
                                left: 29.0,
                                top: 55.0,
                                right: null,
                                bottom: null,
                                width: 136.0,
                                height: 92.0,
                                child: RoomName(),
                              ),
                              const Positioned(
                                left: 800.0,
                                top: 100.0,
                                right: null,
                                bottom: null,
                                width: 712.0,
                                height: 470.0,
                                child: CalendarBox(),
                              ),
                              const Positioned(
                                left: 1176.0,
                                top: 450.0,
                                right: null,
                                bottom: null,
                                width: 336.0,
                                height: 120.0,
                                child: CheckAvailiabilityContainer(),
                              ),
                              const Positioned(
                                left: 1210.0,
                                top: 470.0,
                                right: null,
                                bottom: null,
                                width: 300.0,
                                height: 82.0,
                                child: CheckAvailiability(),
                              ),
                              const Positioned(
                                left: 880.0,
                                top: 145.0,
                                right: null,
                                bottom: null,
                                width: 50.0,
                                height: 50.0,
                                child: FromDate(),
                              ),
                              const Positioned(
                                left: 1200.0,
                                top: 145.0,
                                right: null,
                                bottom: null,
                                width: 50.0,
                                height: 50.0,
                                child: ToDate(),
                              ),
                              const Positioned(
                                left: 940.0,
                                top: 145.0,
                                right: null,
                                bottom: null,
                                width: 200.0,
                                height: 58.0,
                                child: CheckIn(),
                              ),
                              const Positioned(
                                left: 1260.0,
                                top: 145.0,
                                right: null,
                                bottom: null,
                                width: 200.0,
                                height: 58.0,
                                child: CheckOut(),
                              ),
                              const Positioned(
                                left: 930.0,
                                top: 200.0,
                                right: null,
                                bottom: null,
                                width: 200.0,
                                height: 200.0,
                                child: FromDate_day(),
                              ),
                              const Positioned(
                                left: 1250.0,
                                top: 200.0,
                                right: null,
                                bottom: null,
                                width: 200.0,
                                height: 200.0,
                                child: ToDate_Day(),
                              ),
                              const Positioned(
                                left: 1250.0,
                                top: 370.0,
                                right: null,
                                bottom: null,
                                width: 260.0,
                                height: 66.0,
                                child: ToDate_Month(),
                              ),
                              const Positioned(
                                left: 930.0,
                                top: 370.0,
                                right: null,
                                bottom: null,
                                width: 260.0,
                                height: 66.0,
                                child: FromDate_Month(),
                              ),
                              const Positioned(
                                left: 0.0,
                                top: 600.0,
                                right: null,
                                bottom: null,
                                width: 1904.0,
                                height: 1780.0,
                                child: Background(),
                              ),
                              const Positioned(
                                left: 156.0,
                                top: 670.0,
                                right: null,
                                bottom: null,
                                width: 376.0,
                                height: 89.0,
                                child: SelectCategory(),
                              ),
                              const Positioned(
                                left: 100.0,
                                top: 750.0,
                                right: null,
                                bottom: null,
                                width: 1400.0,
                                child: GetRoomData(),
                              ),
                              const Positioned(
                                left: 1200.0,
                                top: 2250.0,
                                right: null,
                                bottom: null,
                                width: 336.0,
                                height: 130.0,
                                child: BookRoomContainer(),
                              ),
                              const Positioned(
                                left: 1220.0,
                                top: 2280.0,
                                right: null,
                                bottom: null,
                                width: 300.0,
                                height: 82.0,
                                child: BookRoom(),
                              ),
                              const Positioned(
                                left: 104,
                                bottom: null,
                                height: 87,
                                right: null,
                                top: 2450,
                                width: 374,
                                child: Text(
                                  "Hotel Policy",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 48),
                                ),
                              ),
                            ]),
                      ))
                ])),
          );
        }),
      ),
    ));
  }
}
