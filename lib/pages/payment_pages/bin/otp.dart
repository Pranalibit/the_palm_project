// import 'dart:html';
// import 'dart:math' as math show pi;
// //import 'login.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:google_fonts/google_fonts.dart';

// //import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'room category.dart';
// import 'roomwidget.dart';

// void main() => runApp((MyApp()));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: ScreenOne());
//   }
// }

// class ScreenOne extends StatefulWidget {
//   @override
//   _ScreenOneState createState() => new _ScreenOneState();
// }

// class _ScreenOneState extends State<ScreenOne> {
//   var pressed = false;
//   var pressed1 = true;
//   var pressed2 = true;
//   var coloricon = false;
//   var coloricon1 = true;
//   var coloricon2 = true;
//   var screen = "home";

//   @override
//   Widget build(BuildContext context) {
//     final screenheight = MediaQuery.of(context).size.height;
//     final screenwidth = MediaQuery.of(context).size.width;

//     return MaterialApp(
//         home: Scaffold(
//             backgroundColor: Colors.white,
//             body: Container(
//                 child: Wrap(children: <Widget>[
//               Container(
//                   height: screenheight,
//                   width: screenwidth / 20,
//                   color: Colors.black,
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(height: 24),
//                       Container(
//                         height: screenheight / 12,
//                         // decoration: BoxDecoration(
//                         //     image:
//                         //     DecorationImage(
//                         //         image:
//                         //             AssetImage("assets/images/logo.png")
//                         //             )
//                         //             )
//                         child: FlutterLogo(),
//                       ),
//                       SizedBox(height: screenheight / 12),
//                       AnimatedContainer(
//                           height: screenheight / 12,
//                           color: Colors.black,
//                           duration: Duration(seconds: 1),
//                           child: FlatButton(
//                             shape: CircleBorder(),
//                             color: pressed ? Colors.black : Colors.white,
//                             child: Icon(
//                               Icons.home,
//                               color:
//                                   coloricon ? Colors.white : Colors.yellow[600],
//                               size: 40,
//                             ),
//                             onPressed: () => {
//                               setState(() {
//                                 coloricon = !coloricon;
//                                 coloricon1 = true;
//                                 coloricon2 = true;
//                                 pressed = !pressed;
//                                 pressed1 = true;
//                                 pressed2 = true;
//                                 screen = "home";
//                               })
//                             },
//                           )),
//                       SizedBox(height: screenheight / 12),
//                       AnimatedContainer(
//                         color: Colors.black,
//                         height: screenheight / 12,
//                         duration: Duration(seconds: 1),
//                         child: FlatButton(
//                             shape: CircleBorder(),
//                             color: pressed1 ? Colors.black : Colors.white,
//                             child: Icon(
//                               Icons.people_alt_rounded,
//                               color: coloricon1
//                                   ? Colors.white
//                                   : Colors.yellow[600],
//                               size: 40,
//                             ),
//                             onPressed: () => {
//                                   setState(() {
//                                     coloricon = true;
//                                     coloricon2 = true;
//                                     coloricon1 = !coloricon1;
//                                     pressed1 = !pressed1;
//                                     pressed = true;
//                                     pressed2 = true;
//                                     screen = "dashboard";
//                                   })
//                                 }),
//                       ),
//                       SizedBox(height: screenheight / 12),
//                       AnimatedContainer(
//                         height: screenheight / 12,
//                         child: FlatButton(
//                             shape: CircleBorder(),
//                             color: pressed2 ? Colors.black : Colors.white,
//                             child: Icon(
//                               Icons.assignment_returned,
//                               color: coloricon2
//                                   ? Colors.white
//                                   : Colors.yellow[600],
//                               size: 40,
//                             ),
//                             onPressed: () => {
//                                   setState(() {
//                                     pressed2 = !pressed2;
//                                     pressed = true;
//                                     pressed1 = true;
//                                     coloricon = true;
//                                     coloricon1 = true;
//                                     coloricon2 = !coloricon2;
//                                     screen = "Refunds";
//                                   })
//                                 }),
//                         color: Colors.black,
//                         duration: Duration(seconds: 1),
//                       )
//                     ],
//                   )),
//               (screen == "home")
//                   ? home()
//                   : (screen == "dashboard")
//                       ? Dashboard()
//                       : Refunds()
//             ]))));
//   }
// }

// Widget home() {
//   String room = "Deluxe";
//   return SingleChildScrollView(
//     scrollDirection: Axis.vertical,
//     child: Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Padding(
//               padding: EdgeInsets.fromLTRB(48, 16, 0, 10),
//               child: Text("Rooms",
//                   style: GoogleFonts.oswald(
//                       fontSize: 40,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w400))),
//           Padding(
//             padding: EdgeInsets.fromLTRB(48, 0, 0, 10),
//             child: StreamBuilder<QuerySnapshot>(
//                 stream: Firestore.instance.collection("Rooms").snapshots(),
//                 builder: (context, snapshot) {
//                   switch (snapshot.connectionState) {
//                     case ConnectionState.waiting:
//                       return Text("Loading.....");
//                     default:
//                       List<Widget> _list_rooms = [];
//                       snapshot.data.documents.forEach((element) {
//                         _list_rooms
//                             .add(_Room_Section(room: element.documentID));
//                         //print(element.documentID);
//                       });
//                       return SingleChildScrollView(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: _list_rooms,
//                         ),
//                       );
//                   }
//                 }),
//           ),
//           // Padding(
//           //     padding: EdgeInsets.fromLTRB(48, 0, 0, 10),
//           //     child: Text("Deluxe Rooms",
//           //         style: GoogleFonts.oswald(
//           //             fontSize: 25,
//           //             color: Colors.grey[400],
//           //             fontWeight: FontWeight.w400))),
//           // Padding(
//           //     padding: EdgeInsets.fromLTRB(16, 0, 0, 10),
//           //     child: Wrap(
//           //       children: <Widget>[
//           //         for (final DRoom in Drooms) RoomWidget1(droom: DRoom)
//           //       ],
//           //     )),
//         ],
//       ),
//     ),
//   );
// }

// class _Room_Section extends StatelessWidget {
//   const _Room_Section({
//     Key key,
//     @required this.room,
//   }) : super(key: key);

//   final String room;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(room,
//             style: GoogleFonts.oswald(
//                 fontSize: 25,
//                 color: Colors.grey[400],
//                 fontWeight: FontWeight.w400)),
//         StreamBuilder<QuerySnapshot>(
//             stream: Firestore.instance
//                 .collection("Rooms/" + room + "/Status")
//                 .snapshots(),
//             builder: (context, snapshot) {
//               switch (snapshot.connectionState) {
//                 case ConnectionState.waiting:
//                   return Text("Loading.....");
//                 default:
//                   // print(snapshot.data.documents[0]);
//                   List<Widget> _list_rooms_nums = [];
//                   snapshot.data.documents.forEach((element) {
//                     _list_rooms_nums.add(RoomWidget(
//                         sroom: new SRoom(
//                             occupancy: element.data["occupied"],
//                             date: element.data["date"],
//                             guest: element.data["Name"],
//                             guestnumber: element.data["guests"],
//                             roomid: element.documentID.toString())));
//                     //print(element.documentID);
//                   });
//                   return Wrap(children: _list_rooms_nums);
//               }
//             }),
//       ],
//     );
//   }
// }

// Widget Dashboard() {
//   return Container(
//       child: Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Padding(
//           padding: EdgeInsets.fromLTRB(48, 16, 0, 10),
//           child: Text("Guests",
//               style: GoogleFonts.oswald(
//                   fontSize: 40,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w400))),
//       Padding(
//           padding: EdgeInsets.fromLTRB(48, 0, 0, 10),
//           child: Text("Upcoming guests",
//               style: GoogleFonts.oswald(
//                   fontSize: 25,
//                   color: Colors.grey[400],
//                   fontWeight: FontWeight.w400))),
//     ],
//   ));
// }

// Widget Refunds() {
//   return Container(
//     child: Center(child: Text("Refunds")),
//     color: Colors.red,
//   );
// }