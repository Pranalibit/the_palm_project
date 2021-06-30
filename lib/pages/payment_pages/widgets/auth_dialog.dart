
import 'package:flutter/material.dart';

import 'google_button.dart';



class AuthDialog extends StatefulWidget {
  @override
  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       gradient: LinearGradient(
         begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.1, 0.3, 0.7, 1],
      colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink]
  ),
       )
     ,
           child: Dialog(
        
      
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              color: Theme.of(context).backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'Book Room',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                        fontSize: 24,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                  const Divider(
          color: Colors.black,
          height: 25,
          thickness: 2,
          indent: 5,
          endIndent: 5,
        ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      
                      child: GoogleButton()),
                  )
                ]),
        ),
      ))),
    );
  }
}