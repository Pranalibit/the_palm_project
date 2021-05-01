import 'package:flutter/material.dart';
import 'room_card.dart';
import 'headings.dart';
import 'globals.dart';

class DynamicRooms extends StatefulWidget {
  @override
  _DynamicRoomsState createState() => _DynamicRoomsState();
}

class _DynamicRoomsState extends State<DynamicRooms> {
  Map<String, int> roomCount = {'Delux': 5, 'Bamboo': 6, 'Regular': 9};
  double ht = 270;
  int counter = 0;

  int roomLogic() {
    maxRoom = roomCount['Delux'] + roomCount['Bamboo'] + roomCount['Regular'];
    print('Maxroom: $maxRoom');
    return maxRoom;
  }

  void _incrementCounter() {
    setState(() {
      int s = roomLogic();
      print("RoomLogic return $s");
      if (counter > s) {
        counter = maxRoom;
      } else {
        counter++;
        maxRoom--;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (counter <= 0) {
        counter = 0;
      } else {
        counter--;
        print(maxRoom);
        maxRoom++;
        print(maxRoom);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Headings(text: 'Rooms'),
            SizedBox(
              width: 200,
            ),
            Container(
                height: 65.0,
                width: 109.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40.0)),
                    color: Colors.white),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle_outline_rounded),
                          onPressed: _incrementCounter,
                          color: Colors.grey,
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(color: Colors.black),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline_rounded),
                          onPressed: _decrementCounter,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Center(
                        child: Text(
                      'Rooms',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ))
                  ],
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75.0),
          child: Container(
            width: 400,
            height: ht * (counter),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0))),
            child: ListView.builder(
              itemBuilder: (context, count) {
                return Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoomCard(text: count),
                ));
              },
              itemCount: counter,
              physics: const NeverScrollableScrollPhysics(),
            ),  
          ),
        )
      ],
    ));
  }
}
