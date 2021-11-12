// @dart=2.9
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/checkout_transform.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/continue_booking.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/room_cost.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/room_cost_group.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/room_count.dart';
import 'package:palm/pages/payment_pages/widgets/globals.dart';

class CheckoutGroup extends StatelessWidget {
  const CheckoutGroup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 539.0,
      height: 748.5057373046875,
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
                final double width = constraints.maxWidth * 0.42115027829313545;

                final double height =
                    constraints.maxHeight * 0.04433865857252381;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5269016697588126,
                      y: constraints.maxHeight * 0.1597222244872964,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: Text(
                          "${fromDate.value.day} ${months[fromDate.value.month - 1]} - ${toDate.value.day} ${months[toDate.value.month - 1]}",
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.4267161410018553;

                final double height =
                    constraints.maxHeight * 0.04834664388310108;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.1597222244872964,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const Text(
                          '''Dates''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 196, 196, 196),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.4267161410018553;

                final double height =
                    constraints.maxHeight * 0.04834664388310108;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.24305556121824096,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const Text(
                          '''Rooms''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 196, 196, 196),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.42115027829313545;

                final double height =
                    constraints.maxHeight * 0.04433865857252381;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.5763888877563518,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const Text(
                          '''Service Charges''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 196, 196, 196),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.4267161410018553;

                final double height =
                    constraints.maxHeight * 0.04834664388310108;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.6597222346801301,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const Text(
                          '''Taxes''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 196, 196, 196),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.42115027829313545;

                final double height =
                    constraints.maxHeight * 0.04433865857252381;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5269016697588126,
                      y: constraints.maxHeight * 0.24305556121824096,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const RoomCount(),
                      ))
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
            //     final double width = constraints.maxWidth * 0.4267161410018553;

            //     final double height =
            //         constraints.maxHeight * 0.04834664388310108;

            //     return Stack(children: [
            //       TransformHelper.translate(
            //           x: constraints.maxWidth * 0.5269016697588126,
            //           y: constraints.maxHeight * 0.32638888775635183,
            //           z: 0,
            //           child: SizedBox(
            //             width: width,
            //             height: height,
            //             child: RoomCost(
            //               price: 1506,
            //             ),
            //           ))
            //     ]);
            //   }),
            // ),
            // Positioned(
            //   left: 0.0,
            //   top: 0.0,
            //   right: 0.0,
            //   bottom: 0.0,
            //   width: null,
            //   height: null,
            //   child: LayoutBuilder(
            //       builder: (BuildContext context, BoxConstraints constraints) {
            //     final double width = constraints.maxWidth * 0.4267161410018553;

            //     final double height =
            //         constraints.maxHeight * 0.04834664388310108;

            //     return Stack(children: [
            //       TransformHelper.translate(
            //           x: constraints.maxWidth * 0.5269016697588126,
            //           y: constraints.maxHeight * 0.40972223468013014,
            //           z: 0,
            //           child: SizedBox(
            //             width: width,
            //             height: height,
            //             child: RoomCost(
            //               price: 1280,
            //             ),
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
                final double width = constraints.maxWidth * 0.4267161410018553;

                final double height =
                    constraints.maxHeight * 0.04834664388310108;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5269016697588126,
                      y: constraints.maxHeight * 0.5763888877563518,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const RoomCost(
                          price: 0,
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
                final double width = constraints.maxWidth * 0.41115027829313545;

                final double height =
                    constraints.maxHeight * 0.09833865857252381 * 3;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0475139146567718,
                      y: constraints.maxHeight * 0.32638888775635183,
                      z: 0,
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: const GetRoomNameGroup()))
                ]);
              }),
            ),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              final double width = constraints.maxWidth * 0.4267161410018553;

              final double height =
                  // constraints.maxHeight * 0.04834664388310108;
                  constraints.maxHeight * 0.09833865857252381 * 3;

              return Stack(children: [
                TransformHelper.translate(
                    x: constraints.maxWidth * 0.5269016697588126,
                    y: constraints.maxHeight * 0.32638888775635183,
                    z: 0,
                    child: SizedBox(
                        width: width,
                        height: height,
                        child: const GetRoomCostGroup()))
              ]);
            }),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.4267161410018553;

                final double height =
                    constraints.maxHeight * 0.04834664388310108;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.5269016697588126,
                      y: constraints.maxHeight * 0.6597222346801301,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const RoomCost(
                          price: 10,
                        ),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: -30.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.942000586070872;

                final double height =
                    constraints.maxHeight * 0.1248942187714814;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.6700,
                      z: 0,
                      child: SizedBox(
                        height: height,
                        width: width,
                        child: const Divider(
                          color: Colors.yellow,
                          thickness: 3.0,
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
                final double width = constraints.maxWidth * 0.400556586270872;

                final double height =
                    constraints.maxHeight * 0.1248942187714814;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.7430555408325735,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const Text(
                          '''Total Price''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 30.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 20, 20, 20),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.2690166975881262;

                final double height =
                    constraints.maxHeight * 0.12890220408205869;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.6846011131725418,
                      y: constraints.maxHeight * 0.7444444571288598,
                      z: 0,
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: const Text(
                            "",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 30.0,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          )))
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
                final double width = constraints.maxWidth * 0.8794063079777366;

                final double height =
                    constraints.maxHeight * 0.09027777551270362;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.059369202226345084,
                      y: constraints.maxHeight * 0.9097222346801301,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: Container(
                          width: 474.0,
                          height: 67.57343292236328,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Container(
                              color: const Color.fromARGB(255, 255, 209, 0),
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
                final double width = constraints.maxWidth;

                final double height =
                    constraints.maxHeight * 0.12361111428221494;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: Container(
                          width: 539.0,
                          height: 92.52362823486328,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                            child: Container(
                              color: const Color.fromARGB(255, 255, 209, 0),
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
                final double width = constraints.maxWidth * 0.30612244897959184;

                final double height =
                    constraints.maxHeight * 0.08862442143437144;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.0575139146567718,
                      y: constraints.maxHeight * 0.020833334182736144,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const Text(
                          '''Checkout''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 34.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 255, 255, 255),

                            /* letterSpacing: 0.0, */
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
                final double width = constraints.maxWidth * 0.49536178107606677;

                final double height =
                    constraints.maxHeight * 0.08561643612379417;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.2541743970315399,
                      y: constraints.maxHeight * 0.915088902026319,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const ContinueBooking(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
