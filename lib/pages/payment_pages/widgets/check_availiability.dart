// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'globals.dart';

class CheckAvailiability extends StatefulWidget {
  const CheckAvailiability({Key key}) : super(key: key);

  @override
  _CheckAvailiabilityState createState() => _CheckAvailiabilityState();
}

class _CheckAvailiabilityState extends State<CheckAvailiability> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        getRoomsPrice().then((result) {
          // dialogTrigger(context);
          print(roomsPrice);
          print(availiableRooms);
          print(maxIntersection);
        }).catchError((e) {
          print("Error" + e);
        });

        getAvailiableRooms().then((value) {
          print(maxIntersection);
        }).catchError((e) {
          print("Error" + e);
        });
      },
      child: const Text(
        "Check Availibility",
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 36.0,
          fontFamily: 'Oswald',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}

Map<String, String> roomsPrice = {};
Map<String, int> availiableRooms = {};
Map<String, int> maxIntersection = {};
List<String> roomName = [];
Map<String, int> userSelection = {};

Future<void> getRoomsPrice() async {
  CollectionReference _collectionRoomnRef =
      FirebaseFirestore.instance.collection('Rooms');

  QuerySnapshot snapshot = await _collectionRoomnRef.get();

  snapshot.docs.forEach((element) {
    roomsPrice[element.id] = element.data()['rates'];
    availiableRooms[element.id] = element.data()['Total'];
    maxIntersection[element.id] = 0;
    roomName.add(element.id);
    userSelection[element.id] = 0;
    print(roomName);
  });
}

Future<void> getAvailiableRooms() async {
  CollectionReference _collectionReservationRef =
      FirebaseFirestore.instance.collection('Reservation');

  QuerySnapshot snapshot = await _collectionReservationRef.get();

  final reservationData = snapshot.docs.map((doc) => doc.data()).toList();

  for (var i = 0; i < availiableRooms.length; i++) {
    for (var datePointer = fromDate.value.day;
        datePointer <= toDate.value.day;
        datePointer++) {
      num counter = 0;

      for (var ticket in reservationData) {
        Timestamp checkInTimestamp = ticket['Check-in'];
        DateTime checkInDate = checkInTimestamp.toDate();

        Timestamp checkOutTimestamp = ticket['Check-out'];
        DateTime checkOutDate = checkOutTimestamp.toDate();

        if (checkInDate.month >= fromDate.value.month &&
            checkOutDate.month <= toDate.value.month) {
          if (datePointer >= checkInDate.day &&
              datePointer <= checkOutDate.day) {
            counter = counter + ticket['RoomDes'][roomName[i]];

            if (maxIntersection[roomName[i]] < counter) {
              maxIntersection[roomName[i]] = counter;
            }
          }
        }
      }
    }
  }
  for (var i = 0; i < availiableRooms.length; i++) {
    availiableRooms[roomName[i]] =
        availiableRooms[roomName[i]] - maxIntersection[roomName[i]];
    print(maxIntersection[roomName[i]]);
    print(availiableRooms[roomName[i]]);
  }
}
