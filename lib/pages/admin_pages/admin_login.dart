import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:the_palm_project/utils/constant.dart';

class AdminLogin extends StatelessWidget {
  const AdminLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      backgroundColor: secondaryColor,
      content: Container(
        height: 450,
        width: 650,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 250,
              child: Container(
                height: 500,
                width: 500,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 440,
              child: Container(
                height: 500,
                width: 500,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: 650,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 450,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                                width: 250,
                                height: 400,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade200.withOpacity(0.1)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('Admin Login'),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(90.0),
                                                  ),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintStyle: TextStyle(
                                                  color: Colors.white,
                                                ),
                                                filled: true,
                                                fillColor: Colors.grey.shade200
                                                    .withOpacity(0.1),
                                                hintText: 'Name'),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: TextFormField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.lock,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(90.0),
                                                  ),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintStyle: TextStyle(
                                                  color: Colors.white,
                                                ),
                                                filled: true,
                                                fillColor: Colors.grey.shade200
                                                    .withOpacity(0.1),
                                                hintText: 'Password'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Login'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Image.asset("assets/logo/Logo.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
