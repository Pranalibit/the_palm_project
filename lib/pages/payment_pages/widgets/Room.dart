import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_palm_project/pages/payment_pages/widgets/checkout.dart';

class RoomMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Room>(
        create: (BuildContext context) => Room(),
        child: Scaffold(
          body: CheckOut(),
        ));
  }
}

class Room {
  
}
