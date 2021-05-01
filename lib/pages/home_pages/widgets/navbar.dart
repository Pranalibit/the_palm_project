import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';

//ScreenUtils
import 'package:flutter_screenutil/flutter_screenutil.dart';

double collapsableHeight = 0.0;
Color selected = Color(0xffffffff);
Color notSelected = Color(0xafffffff);

class navbar extends StatefulWidget {
  @override
  _navbarstate createState() => _navbarstate();
}

class _navbarstate extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            height: 10.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
          Container(
            height: 80,
            child: Stack(children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/logo/Logo.png"),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50.w,
                    ),
                    NavBarItem(text: 'Home'),
                    SizedBox(
                      width: 50.w,
                    ),
                    NavBarItem(text: 'Rooms'),
                    SizedBox(
                      width: 200.w,
                    ),
                    NavBarItem(text: 'Ammeneties'),
                    SizedBox(
                      width: 50.w,
                    ),
                    NavBarItem(text: 'Gallery'),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final String text;

  NavBarItem({
    this.text,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 60,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: Text(
              widget.text,
              style: GoogleFonts.oswald(fontSize: 36.r, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({
    this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xcfffffff),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: Icon(
            Icons.menu,
            size: 30.0,
            color: Color(0xcfffffff),
          ),
        ),
      ),
    );
  }
}

class _DiamondBorder extends ShapeBorder {
  const _DiamondBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 2.0)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  // This border doesn't support scaling.
  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
