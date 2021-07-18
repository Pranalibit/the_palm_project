import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/checkout.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/globals.dart';
import 'globals.dart';
import 'headings.dart';

class HotelRoom extends StatefulWidget {
  @override
  _HotelRoomState createState() => _HotelRoomState();
}

class _HotelRoomState extends State<HotelRoom> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Headings(text: 'Rooms'),
        Padding(
          padding: const EdgeInsets.only(
            left: 85.0,
          ),
          child: Container(
            height: 300.0,
            width: 300.0,
            child: Column(
              children: [
                // Text(
                //   "Standard ${roomCount["Standard"]} \n Bamboo ${roomCount["Bamboo"]} \n Deluxe ${roomCount["Deluxe"]}",
                //   style: TextStyle(color: Colors.white, fontSize: 30.0),
                // ),
                Row(
                  children: [
                    Headings(text: "Standard"),
                    SizedBox(
                      width: 25.0,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(() {
                            
                            incrementRoom("Standard");
                            CheckOut();
                          });
                        }),
                    Text(
                      "${standardCounter.value}",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(() {
                            
                            if (standardCounter.value <= 0) {
                            } else {
                              standardCounter.value--;
                            }

                            decrementRoom("Standard");
                            CheckOut();
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Headings(text: "Bamboo"),
                    SizedBox(
                      width: 25.0,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(() {
                           
                            incrementRoom("Bamboo");
                            CheckOut();
                          });
                        }),
                    Text(
                      "${bambooCounter.value}",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(() {
                            
                            if (bambooCounter.value <= 0) {
                            } else {
                              bambooCounter.value--;
                            }

                            decrementRoom("Bamboo");
                            CheckOut();
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Headings(text: "Deluxe"),
                    SizedBox(
                      width: 25.0,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(() {
                            
                            print("Incrment Button Pressed for deluxe");
                            incrementRoom("Deluxe");
                            print("Deluxe Counter $deluxeCounter");
                            print("Incremetn room deluxe func implemented");
                            CheckOut();
                          });
                        }),
                    Text(
                      "${deluxeCounter.value}",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(() {
                            
                            if (deluxeCounter.value <= 0) {
                            } else {
                              deluxeCounter.value--;
                            }

                            decrementRoom("Deluxe");
                            print("Deluxe Counter $deluxeCounter");
                            CheckOut();
                          });
                        }),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }

  void incrementRoom(String roomContext) {
    print(roomContext);
    setState(() {
      if (roomCount["Standard"] <= 0 &&
          roomCount["Bamboo"] <= 0 &&
          roomCount["Deluxe"] <= 0) {
        Fluttertoast.showToast(
            msg: "Sorry, All rooms are Booked",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
      if (roomContext == "Standard") {
        if (roomCount["Standard"] <= 0) {
          Fluttertoast.showToast(
              msg: "Please Choose another Room Type",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          //No Decrement
          print("Decrement in standard for less than 0");
        } else {
          standardCounter.value++;
          print('$standardCounter');
          roomCount["Standard"]--;
        }
      } else if (roomContext == "Bamboo") {
        if (roomCount["Bamboo"] <= 0) {
          Fluttertoast.showToast(
              msg: "Please Choose another Room Type",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          //No Decrement
          print("Decrement in bamboo for less than 0");
        } else {
          bambooCounter.value++;
          roomCount["Bamboo"]--;
        }
      } else if (roomContext == "Deluxe") {
        if (roomCount["Deluxe"] <= 0) {
          Fluttertoast.showToast(
              msg: "Please Choose another Room Type",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          //No Decrement
          print("Decrement in deluxe for less than 0");
        } else {
          deluxeCounter.value++;
          print("Deluxe Counter $deluxeCounter");
          roomCount["Deluxe"]--;
        }
      } else {
        print("Something went wrong");
      }
      CheckOut();
    });
  }

  void decrementRoom(String roomContext) {
    setState(() {
      if (roomContext == "Standard") {
        if (roomCount["Standard"] >= roomCountCopy["Standard"]) {
          Fluttertoast.showToast(
              msg: "Maximum Count reached",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          print("Room count of standard incresed in fatal mannner");
        } else {
          roomCount["Standard"]++;
        }
      } else if (roomContext == "Bamboo") {
        if (roomCount["Bamboo"] >= roomCountCopy["Bamboo"]) {
          Fluttertoast.showToast(
              msg: "Maximum Count reached",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          print("Room count of bamboo incresed in fatal mannner");
        } else {
          roomCount["Bamboo"]++;
        }
      } else if (roomContext == "Deluxe") {
        if (roomCount["Deluxe"] >= roomCountCopy["Deluxe"]) {
          Fluttertoast.showToast(
              msg: "Maximum Count reached",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          print("Room count of deluxe incresed in fatal mannner");
        } else {
          roomCount["Deluxe"]++;
        }
      } else {
        print("Something went Wrong");
      }
      CheckOut();
    });
  }
}
