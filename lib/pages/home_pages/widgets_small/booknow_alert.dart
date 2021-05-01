import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:the_palm_project/utils/constant.dart';
import 'package:the_palm_project/utils/social__media__icons_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dart:html' as html;

class BookNowAlert extends StatelessWidget {
  const BookNowAlert({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = 500;
    double height = 450;
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      backgroundColor: Colors.grey.withOpacity(0.0),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          image: DecorationImage(
            image: AssetImage("assets/gallery/gallery1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 120,
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
              left: 150,
              child: Container(
                height: 500,
                width: 500,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Container(
              width: width,
              height: height,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: double.infinity,
                      height: height - 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.1)),
                      child: Center(
                        child: Container(
                          width: 180.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'To book a room,',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Contact Us here:',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  html.window.open(phone_link, 'new tab');
                                },
                                child: IconText(
                                    icon: Icons.phone,
                                    //text: '+919767906390',
                                    text: '+919860455599'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  html.window.open(mail_link, 'new tab');
                                },
                                child: IconText(
                                  icon: Icons.mail,
                                  text: 'thepalmpune@gmail.com',
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  html.window.open(insta_link, 'new tab');
                                },
                                child: IconText(
                                  icon: Social_Media_Icons.instagram,
                                  text: 'instagram_handle',
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  html.window.open(fb_link, 'new tab');
                                },
                                child: IconText(
                                  icon: Social_Media_Icons.facebook_official,
                                  text: 'The Palm Resort',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({
    @required this.icon,
    @required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: primaryColor,
        ),
        SizedBox(
          width: 25,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
