import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_palm_project/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_Page_Drawer extends StatelessWidget {
  const Home_Page_Drawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: padding_from_top,
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40.r,
                    width: 40.r,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 2, color: primaryColor)),
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // DrawerHeader(
          //   child: Text('Drawer Header'),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              'Home',
              style: GoogleFonts.oswald(
                fontSize: headline5,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Activities',
              style: GoogleFonts.oswald(
                fontSize: headline5,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Gallery',
              style: GoogleFonts.oswald(
                fontSize: headline5,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Contact Us',
              style: GoogleFonts.oswald(
                fontSize: headline5,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
