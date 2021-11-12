// @dart=2.9

import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/checkout_transform.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/details_box.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/enter_details.dart';


import 'next_button.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 981.0,
      height: 698.0,
      child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth;

                final double height = constraints.maxHeight;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const DetailsBox(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.8991448483092827;

                final double height =
                    constraints.maxHeight * 0.08486988756239927;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.10289388767440749,
                      y: constraints.maxHeight * 0.1457858809768983,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const EnterDetails(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.20900321128293037;

                final double height =
                    constraints.maxHeight * 0.09111617561056143;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.10289388767440749,
                      y: constraints.maxHeight * 0.7630979871339989,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const NextButton(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.38102894820933675;

                final double height =
                    constraints.maxHeight * 0.09111617561056143;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.10289388767440749,
                      y: constraints.maxHeight * 0.3257403223425748,
                      z: 0,
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: const FirstName()))
                ]);
              }),
            ),
            // Positioned(
            //   left: 0.0,
            //   top: 0.0,
            //   right: 0.0,
            //   bottom: 0.0,
            //   width: null,
            //   height: null,
            //   child: LayoutBuilder(
            //       builder: (BuildContext context, BoxConstraints constraints) {
            //     final double width = constraints.maxWidth * 0.3605596482085404;

            //     final double height =
            //         constraints.maxHeight * 0.05753503487923084;

            //     return Stack(children: [
            //       TransformHelper.translate(
            //           x: constraints.maxWidth * 0.12540193143605458,
            //           y: constraints.maxHeight * 0.34396355746468704,
            //           z: 0,
            //           child: Container(
            //             width: width,
            //             height: height,
            //             child: FirstName(),
            //           ))
            //     ]);
            //   }),
            // ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.38102894820933675;

                final double height =
                    constraints.maxHeight * 0.09111617561056143;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5160771641162557,
                      y: constraints.maxHeight * 0.3257403223425748,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const LastName(),
                      ))
                ]);
              }),
            ),

            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.794212224651185;

                final double height =
                    constraints.maxHeight * 0.09111617561056143;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.10289388767440749,
                      y: constraints.maxHeight * 0.47152618145874375,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const EmailAdress(),
                      ))
                ]);
              }),
            ),

            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.381243628950051;

                final double height =
                    constraints.maxHeight * 0.09025787965616046;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.10295616717635066,
                      y: constraints.maxHeight * 0.6174785100286533,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const PhoneNumber(),
                      ))
                ]);
              }),
            ),

            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.381243628950051;

                final double height =
                    constraints.maxHeight * 0.09025787965616046;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5158002038735984,
                      y: constraints.maxHeight * 0.6174785100286533,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const OTP(),
                      ))
                ]);
              }),
            ),
          ]),
    );
  }
}
