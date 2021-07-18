// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import '../widgets/headings.dart';
// import '../widgets/globals.dart';

// class DynamicRooms extends StatefulWidget {
//   @override
//   _DynamicRoomsState createState() => _DynamicRoomsState();
// }

// class _DynamicRoomsState extends State<DynamicRooms> {
//   Map<String, int> roomCount = {'Delux': 5, 'Bamboo': 6, 'Regular': 9};
//   double ht = 270;
//   int counter = 0;
//   bool res;

//   int roomLogic() {
//     maxRoom = roomCount['Delux'] + roomCount['Bamboo'] + roomCount['Regular'];
//     return maxRoom;
//   }

//   bool onpressed(bool res) {
//     if (value == 0 || chosenValue == null) {
//       print("Chosen Value $chosenValue");
//       print("Value: $value");
//       res = false;
//       return false; //Disabled Button
//     } else {
//       print("here u go");
//       res = true;
//       return true; //Enabled Button
//     }
//   }

//   void _incrementCounter() {
//     setState(() {
//       if (counter > roomLogic()) {
//         print("No availiable rooms");
//       } else {
//         counter++;
//         print("Increment counter: $counter");
//         roomCount['Regular']--;
//         int x = roomLogic();
//         print("Incremetn maxrooom $x");
//       }
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       if (counter <= 0) {
//         print("Decremetn counter $counter");
//         counter = 0;
//       } else {
//         counter--;

//         roomCount['Delux']++;
//         int x = roomLogic();
//         print("Decrement maxrooom $x");
//         print("Decremetn counter $counter");
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//       children: [
//         Row(
//           children: [
//             Headings(text: 'Rooms'),
//             SizedBox(
//               width: 200,
//             ),
//             Container(
//                 height: 65.0,
//                 width: 109.0,
//                 decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.only(topRight: Radius.circular(40.0)),
//                     color: Colors.white),
//                 padding: EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.add_circle_outline_rounded),
//                           onPressed: () {
//                             res = onpressed(res);
//                             print("res $res");
//                             if (res == true) {
//                               print("res 1");
//                               _incrementCounter();
//                             } else if (buttonStatus == true) {
//                               print("bth sts tru");
//                               _incrementCounter();
//                               buttonStatus = false;
//                             } else {
//                               print('u r in toast');
//                               Fluttertoast.showToast(
//                                   msg: "This is Center Short Toast",
//                                   toastLength: Toast.LENGTH_SHORT,
//                                   gravity: ToastGravity.CENTER,
//                                   timeInSecForIosWeb: 1,
//                                   backgroundColor: Colors.red,
//                                   textColor: Colors.white,
//                                   fontSize: 16.0);
//                             }
//                           },
//                           color: Colors.grey,
//                         ),
//                         Text(
//                           '$counter',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         IconButton(
//                           icon: Icon(Icons.remove_circle_outline_rounded),
//                           onPressed: () {
//                             res = onpressed(res);
//                             print("Res $res");
//                             if (res == true) {
//                               print('res =1');
//                               _decrementCounter();
//                             } else if (buttonStatus == true) {
//                               print('under button stat logic');
//                               _decrementCounter();
//                               buttonStatus = false;
//                             } else {
//                               Fluttertoast.showToast(
//                                   msg: "Room's are not availiable",
//                                   toastLength: Toast.LENGTH_SHORT,
//                                   gravity: ToastGravity.CENTER,
//                                   timeInSecForIosWeb: 1,
//                                   backgroundColor: Colors.red,
//                                   textColor: Colors.white,
//                                   fontSize: 16.0);
//                             }
//                           },
//                           color: Colors.grey,
//                         ),
//                       ],
//                     ),
//                     Center(
//                         child: Text(
//                       'Rooms',
//                       style: TextStyle(fontSize: 14, color: Colors.grey),
//                     ))
//                   ],
//                 ))
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 75.0),
//           child: Container(
//             width: 400,
//             height: ht * (counter),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40.0),
//                     bottomLeft: Radius.circular(40.0),
//                     bottomRight: Radius.circular(40.0))),
//             child: ListView.builder(
//               itemBuilder: (context, count) {
//                 return Center(
//                     child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: RoomCard(text: count),
//                 ));
//               },
//               itemCount: counter,
//               physics: const NeverScrollableScrollPhysics(),
//             ),
//           ),
//         )
//       ],
//     ));
//   }
// }

// class RoomCard extends StatefulWidget {
//   final text;
//   RoomCard({this.text});

//   @override
//   _RoomCardState createState() => _RoomCardState();
// }

// class _RoomCardState extends State<RoomCard> {
//   void _increment() {
//     setState(() {
//       print(value);
//       if (value >= 4) {
//         print("Guest limit exceeded");
//       } else {
//         value++;
//       }
//     });
//   }

//   void _decrement() {
//     setState(() {
//       print(chosenValue);
//       print(value);
//       if (value <= 0) {
//       } else {
//         value--;
//       }
//     });
//   }

//   void roomCardLogic(String chosenvalue) {
//     setState(() {
//       if (chosenValue == 'Regular') {
//         if (roomCount['Regular'] < 0) {
//           Fluttertoast.showToast(
//               msg: "Please Choose another room type",
//               toastLength: Toast.LENGTH_SHORT,
//               gravity: ToastGravity.CENTER,
//               timeInSecForIosWeb: 1,
//               backgroundColor: Colors.red,
//               textColor: Colors.white,
//               fontSize: 16.0);
//         } else {
//           roomCount['Regular']--;
//           print("Check for regular $roomCount['Regular]");
//         }
//       } else if (chosenValue == 'Deluxe') {
//         if (roomCount['Deluxe'] < 0) {
//           Fluttertoast.showToast(
//               msg: "Please Choose another room type",
//               toastLength: Toast.LENGTH_SHORT,
//               gravity: ToastGravity.CENTER,
//               timeInSecForIosWeb: 1,
//               backgroundColor: Colors.red,
//               textColor: Colors.white,
//               fontSize: 16.0);
//         } else {
//           roomCount['Deluxe']--;

//           print("Check for deluxe $roomCount['Deluxe]");
//         }
//       } else {
//         if (roomCount['Bamboo'] < 0) {
//           Fluttertoast.showToast(
//               msg: "Please Choose another room type",
//               toastLength: Toast.LENGTH_SHORT,
//               gravity: ToastGravity.CENTER,
//               timeInSecForIosWeb: 1,
//               backgroundColor: Colors.red,
//               textColor: Colors.white,
//               fontSize: 16.0);
//         } else {
//           roomCount['Bamboo']--;
//           print("Check for Bamboo $roomCount['Bamboo]");
//         }
//       }
//     });
//   }

//   bool valuefirst = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(8.0),
//         width: 350,
//         height: 250,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             border: Border.all(color: Colors.black),
//             borderRadius: BorderRadius.all(Radius.circular(10.0))),
//         child: Column(
//           children: [
//             AppBar(
//               title: Text("Room ${widget.text + 1}"),
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       'Types',
//                       style: GoogleFonts.oswald(
//                         color: Colors.black,
//                         fontSize: 24,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 100.0,
//                     ),
//                     DropdownButton<String>(
//                       value: chosenValue,
//                       //elevation: 5,
//                       style: TextStyle(color: Colors.black),

//                       items: room.map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                       hint: Text(
//                         "Room Type",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       onTap: (){

//                       },disabledHint: Text('Room is selected'),
//                       onChanged: (String value) {
//                         setState(() {
//                           chosenValue = value;
                          
//                           print(chosenValue);
//                           roomCardLogic(chosenValue);
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Number of Guests Included',
//                       style: GoogleFonts.oswald(
//                         color: Colors.black,
//                         fontSize: 24,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 30.0,
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.add_circle_outline_rounded),
//                       onPressed: _increment,
//                       color: Colors.black,
//                     ),
//                     Text(
//                       '$value',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.remove_circle_outline_rounded),
//                       onPressed: _decrement,
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Include Breakfast/Lunch',
//                       style: GoogleFonts.oswald(
//                         color: Colors.black,
//                         fontSize: 24,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 30.0,
//                     ),
//                     Checkbox(
//                       checkColor: Colors.black,
//                       value: this.valuefirst,
//                       onChanged: (bool value) {
//                         setState(() {
//                           this.valuefirst = value;
//                         });
//                       },
//                     ),
//                   ],
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
