// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/checkout_transform.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/checkout_group.dart';

import 'package:palm/pages/payment_pages/widgets/Checkout/checkout_ui.dart';

import 'checkout_group.dart';

class CheckMenu extends StatelessWidget {
  const CheckMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 539.0,
      height: 814.0,
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
                        child: const CheckoutUI(),
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
                final double width = constraints.maxWidth;

                final double height =
                    constraints.maxHeight * 0.9195402178190264;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const CheckoutGroup(),
                      ))
                ]);
              }),
            ),
          ]),
    );
  }
}
