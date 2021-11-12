// @dart=2.9
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:palm/helpers/transform/transform.dart';
import 'package:palm/pages/payment_pages/widgets/button_ui.dart';
import 'package:palm/pages/payment_pages/widgets/room_card_ui.dart';

import 'check_availiability.dart';

class RoomGroup extends StatefulWidget {
  final String roomName;
  final String url;
  final String price;

  // ignore: prefer_const_constructors_in_immutables
  RoomGroup({Key key, this.price, this.roomName, this.url}) : super(key: key);

  @override
  _RoomGroupState createState() => _RoomGroupState();
}

class _RoomGroupState extends State<RoomGroup> {
  int _counter = 0;

  void incrementRoom(String room) {
    print(room);

    setState(() {
      if (userSelection == null) {
        print("Please select dates");
      } else if (userSelection[room] >= availiableRooms[room]) {
        print('no more rooms avaiable');
      } else {
        userSelection[room] += 1;
        _counter++;
      }
    });

    print(userSelection);
  }

  void decrementRoom(String room) {
    print(room);
    setState(() {
      if (userSelection == null) {
        print("Please select dates");
      } else if (userSelection[room] < 0) {
        print('Invalid action');
      } else {
        userSelection[room] -= 1;
        _counter--;
      }
    });

    print(userSelection);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200.0,
      height: 418.0,
      child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 1200.0,
              height: 418.0,
              child: SizedBox(
                width: 1200.0,
                height: 418.0,
                child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      const RoomUI1(),
                      Positioned(
                        left: 1.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 579.0,
                        height: 418.0,
                        child: Container(
                          width: 579.0,
                          height: 418.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                          ),
                          child: Stack(
                              clipBehavior: Clip.none,
                              fit: StackFit.expand,
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(20.0),
                                  ),
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(20.0),
                                  ),
                                  child: Image.network(
                                    // "assets/images/142b3c1572a1dd0a5991879b6881ae8ffa210967.png",
                                    widget.url,
                                    color: null,
                                    fit: BoxFit.cover,
                                    width: 579.0,
                                    height: 418.0,
                                    colorBlendMode: BlendMode.dstATop,
                                  ),
                                )
                              ]),
                        ),
                      )
                    ]),
              ),
            ),
            Positioned(
              left: 1000.0,
              top: 88.0,
              right: null,
              bottom: null,
              width: 115.0,
              height: 222.0,
              child: SizedBox(
                width: 115.0,
                height: 222.0,
                child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 115.0,
                        height: 72.0,
                        child: Container(
                          width: 115.0,
                          height: 72.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                            child: Container(
                              color: const Color.fromARGB(255, 255, 209, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.0,
                        top: 163.0,
                        right: null,
                        bottom: null,
                        width: 115.0,
                        height: 59.0,
                        child: Container(
                          width: 115.0,
                          height: 59.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            child: Container(
                              color: const Color.fromARGB(255, 196, 196, 196),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 42.0,
                        top: 85.0,
                        right: null,
                        bottom: null,
                        width: 42.0,
                        height: 81.0,
                        child: Text(
                          "${_counter}",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 48.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0),

                            /* letterSpacing: 0.0, */
                          ),
                        ),
                      ),
                      Positioned(
                          left: 79.42626953125,
                          top: 203.4263916015625,
                          right: null,
                          bottom: null,
                          width: 42.426361083984375,
                          height: 28.426406860351562,
                          child: TransformHelper.rotate(
                              a: -1.00,
                              b: 0.00,
                              c: -0.00,
                              d: -1.00,
                              child: RawMaterialButton(
                                  child: const ButtonUI(),
                                  onPressed: () {
                                    decrementRoom(widget.roomName);
                                  }))),
                      Positioned(
                          left: 37.0,
                          top: 22.0,
                          right: null,
                          bottom: null,
                          width: 42.426361083984375,
                          height: 28.426406860351562,
                          child: RawMaterialButton(
                            child: const ButtonUI(),
                            onPressed: () {
                              incrementRoom(widget.roomName);
                            },
                          )),
                    ]),
              ),
            ),
            Positioned(
              left: 656.0,
              top: 22.0,
              right: null,
              bottom: null,
              width: 212.0,
              height: 372.0,
              child: SizedBox(
                width: 212.0,
                height: 372.0,
                child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 1.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 134.0,
                        height: 73.0,
                        child: Text(
                          widget.roomName,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 30.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0),

                            /* letterSpacing: 0.0, */
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.0,
                        top: 66.0,
                        right: null,
                        bottom: null,
                        width: 130.0,
                        height: 5.0,
                        child: SizedBox(
                          width: 130.0,
                          height: 5.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.zero,
                            child: Container(
                              color: const Color.fromARGB(255, 255, 209, 0),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 8.0,
                        top: 89.0,
                        right: null,
                        bottom: null,
                        width: 145.0,
                        height: 51.0,
                        child: Text(
                          "Lorem Ipsum",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0),

                            /* letterSpacing: 0.0, */
                          ),
                        ),
                      ),
                      const Positioned(
                          left: 8.0,
                          top: 323.0,
                          right: null,
                          bottom: null,
                          width: 66.0,
                          height: 54.0,
                          child: Text(
                            "Price:",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 24.0,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: 0.0, */
                            ),
                          )),
                      Positioned(
                        left: 69.0,
                        top: 323.0,
                        right: null,
                        bottom: null,
                        width: 148.0,
                        height: 54.0,
                        child: Text(
                          " ₹ ${widget.price}",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0),

                            /* letterSpacing: 0.0, */
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 8.0,
                        top: 138.0,
                        right: null,
                        bottom: null,
                        width: 124.0,
                        height: 51.0,
                        child: Text(
                          "Learn More",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875,
                            fontSize: 24.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
}

class GetRoomData extends StatefulWidget {
  const GetRoomData({Key key}) : super(key: key);

  @override
  _GetRoomDataState createState() => _GetRoomDataState();
}

class _GetRoomDataState extends State<GetRoomData> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Rooms").snapshots(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Text("Loading.....");
            default:
              List<Widget> _list_rooms = [];

              snapshot.data.docs.forEach((element) {
                _list_rooms.add(Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: RoomGroup(
                      roomName: element.id,
                      price: element.data()['rates'],
                      url: element.data()['photos'][1],
                    )));
              });
              return Column(
                children: _list_rooms,
              );
          }
        });
  }
}
