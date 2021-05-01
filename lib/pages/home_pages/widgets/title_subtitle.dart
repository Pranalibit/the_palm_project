import 'package:flutter/material.dart';
import 'package:the_palm_project/utils/constant.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({
    Key key,
    @required this.width,
    @required this.title,
    @required this.subtitle,
    @required this.textAlign,
    @required this.crossAxisAlignment,
  }) : super(key: key);

  final double width;
  final String title;
  final String subtitle;
  final TextAlign textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.84,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: headline4),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: subtitle1,
                fontWeight: FontWeight.w100,
                color: secondaryGray),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
