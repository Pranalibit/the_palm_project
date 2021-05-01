import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class amm extends StatelessWidget {
  double hover_button_width = 150.w;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff8f8f8),
      height: 800,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40.0)),
                  child: Container(
                    height: 200,
                    width: 200.w,
                    color: primaryColor,
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40.0)),
                  child: Container(
                    height: 120,
                    width: 120.w,
                    color: Colors.white,
                  ),
                ),
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: Text("Amenities",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.oswald(
                          fontSize: 40,
                          color: secondaryColor,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      "We provide with top class services",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.oswald(
                        fontSize: 20,
                        color: secondaryGray,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: hover_button_width,
                    child: HoverButton(
                      text: '',
                      color: Colors.green,
                      icon: Icon(
                        Icons.house,
                        color: Colors.green,
                        size: 40.w,
                      ),
                    ),
                  ),
                  Text("Rooms",
                      style: GoogleFonts.oswald(
                        fontSize: 20.w,
                        color: Colors.green,
                      )),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: hover_button_width,
                    child: HoverButton(
                      text: '',
                      color: Colors.red,
                      icon: Icon(
                        Icons.local_dining_sharp,
                        color: Colors.red,
                        size: 40.w,
                      ),
                    ),
                  ),
                  Text("Dining",
                      style: GoogleFonts.oswald(
                        fontSize: 20.w,
                        color: Colors.red,
                      )),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: hover_button_width,
                    child: HoverButton(
                      text: '',
                      color: Color(0xFF42A5F5),
                      icon: Icon(
                        Icons.local_bar,
                        color: Color(0xFF42A5F5),
                        size: 40.w,
                      ),
                    ),
                  ),
                  Text("Bar",
                      style: GoogleFonts.oswald(
                        fontSize: 20.w,
                        color: Color(0xFF42A5F5),
                      )),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: hover_button_width,
                    child: HoverButton(
                      text: '',
                      color: Colors.cyan[300],
                      icon: Icon(
                        Icons.beach_access,
                        color: Colors.cyan[300],
                        size: 40.w,
                      ),
                    ),
                  ),
                  Text("Beach Activity",
                      style: GoogleFonts.oswald(
                        fontSize: 20.w,
                        color: Colors.cyan[300],
                      )),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: hover_button_width,
                    child: HoverButton(
                      text: '',
                      color: Colors.purple,
                      icon: Icon(
                        Icons.sports_baseball,
                        color: Colors.purple,
                        size: 40.w,
                      ),
                    ),
                  ),
                  Text("Sports",
                      style: GoogleFonts.oswald(
                        fontSize: 20.w,
                        color: Colors.purple,
                      )),
                ],
              ),
              Spacer(),
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("12K+",
                      style: GoogleFonts.oswald(
                        fontSize: 60,
                        color: primaryColor,
                      )),
                  Text("Customers Served",
                      style: GoogleFonts.oswald(
                        fontSize: 20,
                        color: Colors.black,
                      ))
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("5",
                      style: GoogleFonts.oswald(
                        fontSize: 60,
                        color: primaryColor,
                      )),
                  Text("Room Types",
                      style:
                          GoogleFonts.oswald(fontSize: 20, color: Colors.black))
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("360",
                      style: GoogleFonts.oswald(
                        fontSize: 60,
                        color: primaryColor,
                      )),
                  Text("Expert Workers",
                      style: GoogleFonts.oswald(
                        fontSize: 20,
                        color: Colors.black,
                      ))
                ],
              ),
              Spacer(),
              Stack(children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40.0)),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: primaryColor,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40.0)),
                    child: Container(
                      height: 120,
                      width: 120,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

const Curve _curve = Curves.ease;
const Duration _duration = Duration(milliseconds: 300);

class HoverButton extends StatefulWidget {
  const HoverButton({
    Key key,
    this.color,
    this.icon,
    this.text,
  }) : super(key: key);

  final Color color;
  final Widget icon;
  final String text;

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTapDown: (_) => setState(() => hover = true),
        onTapUp: (_) => setState(() => hover = false),
        onTapCancel: () => setState(() => hover = false),
        child: MouseRegion(
          onHover: (_) => setState(() => hover = true),
          onExit: (_) => setState(() => hover = false),
          child: Container(
            width: 150,
            height: 150,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 4),
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.center,
                  children: [
                    AnimatedPositioned(
                      curve: _curve,
                      duration: _duration,
                      bottom: hover ? -20 : -14,
                      child: AnimatedOpacity(
                        curve: _curve,
                        duration: _duration,
                        opacity: hover ? 1 : 0,
                        child: Text(
                          widget.text,
                          style: TextStyle(
                            color: widget.color,
                          ),
                        ),
                      ),
                    ),
                    _HoverBorderContainer(
                      color: widget.color,
                      icon: widget.icon,
                      hover: hover,
                      offset: Offset(0, -0.5),
                    ),
                    ...List.generate(4, (index) {
                      return _HoverBorderContainer(
                        color: widget.color,
                        hover: hover,
                        offset: Offset(0, -(index + 1) * 0.1),
                        opacity: (index + 1) * 0.2,
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

class _HoverBorderContainer extends ImplicitlyAnimatedWidget {
  const _HoverBorderContainer({
    Key key,
    @required this.color,
    this.icon,
    @required this.offset,
    this.opacity,
    this.hover = false,
    Duration duration = _duration,
    Curve curve = _curve,
  }) : super(
          key: key,
          duration: duration,
          curve: curve,
        );

  final Color color;
  final Widget icon;
  final bool hover;
  final Offset offset;
  final double opacity;

  @override
  __HoverBorderContainerState createState() => __HoverBorderContainerState();
}

class __HoverBorderContainerState
    extends AnimatedWidgetBaseState<_HoverBorderContainer> {
  Tween<double> _doubleTween;
  @override
  Widget build(BuildContext context) {
    double value = _doubleTween.evaluate(animation);
    return FractionalTranslation(
      translation: Offset.lerp(Offset.zero, widget.offset, value),
      child: Transform.rotate(
        alignment: Alignment.center,
        angle: lerpDouble(0, -35 * pi / 180, value),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.skewX(lerpDouble(0, 20 * pi / 180, value)),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: widget.opacity != null
                    ? Color.lerp(Color.fromRGBO(0, 0, 0, 0),
                        widget.color.withOpacity(widget.opacity), value)
                    : widget.color,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size.square(26)),
              child: widget.icon,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void forEachTween(visitor) {
    _doubleTween = visitor(_doubleTween, widget.hover ? 1.0 : 0.0,
        (value) => Tween<double>(begin: value as double)) as Tween<double>;
  }
}
