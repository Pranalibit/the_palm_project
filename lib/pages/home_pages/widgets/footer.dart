import 'package:flutter/material.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'package:the_palm_project/utils/social__media__icons_icons.dart';

import 'dart:html' as html;

class Footer extends StatelessWidget {
  const Footer({
    @required this.width,
  });

  final double width;
  static const double height = 280;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      // color: Colors.white38,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image(
                image: NetworkImage('https://i.ibb.co/0p7HZs8/Logo-2.png'),
                width: 60,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CONTACT US',
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
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Powered by',
                style: TextStyle(color: Colors.white54),
              ),
              SizedBox(
                width: 20,
              ),
              Opacity(
                opacity: 0.6,
                child: Image.asset(
                  'assets/logo/DSC_logo.png',
                  scale: 3.3,
                ),
              )
            ],
          )
        ],
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
