// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/checkout_transform.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205.0321502685547,
      height: 63.599090576171875,
      child: Stack(
          clipBehavior: Clip.none, fit: StackFit.expand,
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
                        child: Container(
                          width: 205.0321502685547,
                          height: 63.599090576171875,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Container(
                              color: const Color.fromARGB(255, 24, 160, 251),
                            ),
                          ),
                        ),
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
                final double width = constraints.maxWidth * 0.5013094825499198;

                final double height =
                    constraints.maxHeight * 0.5286174763617344;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.26153846840813344,
                      y: constraints.maxHeight * 0.275,
                      z: 0,
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: Align(
                            alignment: Alignment.center,
                            child: RawMaterialButton(
                              onPressed: (){
                                
                              },
                              child: const Text(
                                "Verify",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 24.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 255, 255, 255),
                            
                                  /* letterSpacing: -0.36, */
                                ),
                              ),
                            ),
                          )))
                ]);
              }),
            )
          ]),
    );
  }
}
