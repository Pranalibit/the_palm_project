// @dart=2.9
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const ResponsiveWidget({Key key, this.mobile, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        return desktop;
      } else {
        return mobile;
      }
    });
  }
}
