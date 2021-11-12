// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:palm/helpers/transform/checkout_transform.dart';
import 'package:palm/pages/payment_pages/widgets/check_availiability.dart';

class RoomCostGroup extends StatefulWidget {
  final int roomCost;
  const RoomCostGroup({Key key, @required this.roomCost}) : super(key: key);

  @override
  _RoomCostGroupState createState() => _RoomCostGroupState();
}

class _RoomCostGroupState extends State<RoomCostGroup> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0.0,
        top: 0.0,
        right: 0.0,
        bottom: 0.0,
        width: null,
        height: null,
        // child: LayoutBuilder(
        //     builder: (BuildContext context, BoxConstraints constraints) {
        //   final double width = constraints.maxWidth * 0.42115027829313545;

        //   final double height = constraints.maxHeight * 0.04433865857252381;

        // return Stack(children: [
        //   TransformHelper.translate(
        //       x: constraints.maxWidth * 0.0575139146567718,
        //       y: constraints.maxHeight * 0.40972223468013014,
        //       z: 0,
        //       child: SizedBox(
        //         width: width,
        //         height: height,
        //         child:
        child: Text("${widget.roomCost}",
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: const TextStyle(
              height: 1.171875,
              fontSize: 24.0,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0),

              /* letterSpacing: 0.0, */
              //   ),
              // ),
              //         ))
              //   ]);
              // }),
            )));
  }
}

class GetRoomCostGroup extends StatefulWidget {
  const GetRoomCostGroup({Key key}) : super(key: key);

  @override
  _GetRoomCostGroupState createState() => _GetRoomCostGroupState();
}

class _GetRoomCostGroupState extends State<GetRoomCostGroup> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Rooms").snapshots(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Text("Loading.....");
            default:
              List<Widget> listRooms = [];

              snapshot.data.docs.forEach((element) {
                listRooms.add(Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Align(
                    child: RoomCostGroup(
                        roomCost: userSelection[element.id] *
                            num.parse(element.data()['rates'])),
                    alignment: Alignment.centerRight,
                  ),
                ));
              });
              return Column(
                children: listRooms,
              );
          }
        });
  }
}

class RoomNameGroup extends StatefulWidget {
  final String roomName;
  const RoomNameGroup({Key key, @required this.roomName}) : super(key: key);
  @override
  _RoomNameGroupState createState() => _RoomNameGroupState();
}

class _RoomNameGroupState extends State<RoomNameGroup> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.roomName,
      textAlign: TextAlign.left,
      style: const TextStyle(
        height: 1.171875,
        fontSize: 25.0,
        fontFamily: 'Oswald',
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 196, 196, 196),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}

class GetRoomNameGroup extends StatefulWidget {
  const GetRoomNameGroup({Key key}) : super(key: key);

  @override
  _GetRoomNameGroupState createState() => _GetRoomNameGroupState();
}

class _GetRoomNameGroupState extends State<GetRoomNameGroup> {
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
                  padding: const EdgeInsets.only(bottom: 25, left: 2.0),
                  child: Align(
                    child: RoomNameGroup(roomName: element.id),
                    alignment: Alignment.centerLeft,
                  ),
                ));
              });
              return Column(
                children: _list_rooms,
              );
          }
        });
  }
}
