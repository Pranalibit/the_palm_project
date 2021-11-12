// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/checkout_transform.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/check_menu.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/details.dart';

class Checkout1 extends StatelessWidget {
  const Checkout1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: SizedBox(
        width: 1694.0,
        height: 873.0,
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
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 0.5791027154663518;

                  final double height =
                      constraints.maxHeight * 0.7995418098510882;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.032467532467532464,
                        y: constraints.maxHeight * 0.07445589919816724,
                        z: 0,
                        child: SizedBox(
                          width: width,
                          height: height,
                          child: const Details(),
                          // child: GeneratedGroup7Widget(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 0.0,
                top: 35.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 0.3181818181818182;

                  final double height =
                      constraints.maxHeight * 0.9324169530355098;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.6558441558441559,
                        y: constraints.maxHeight * 0.021764032073310423,
                        z: 0,
                        child: SizedBox(
                          width: width,
                          height: height,
                          child: const CheckMenu(),
                          // child: GeneratedGroup13Widget(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    ));
  }
}
