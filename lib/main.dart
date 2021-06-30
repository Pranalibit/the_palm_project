import 'package:flutter/material.dart';
import 'pages/payment_pages/payment_page1.dart';

void main(){
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Palm',
        // color: Colors.black,
        // theme: ThemeData.dark().copyWith(
        //   textTheme: ThemeData.dark().textTheme.apply(
        //         fontFamily: 'Oswald',
        //       ),
        // ),
        //Pass your page widget for testing
        home: PaymentPageLarge()
        //Container(
        //   //duration: Duration(milliseconds: 1000),
        //   child: ResponsiveWidget(
        //     largeScreen: HomePageLarge(),
        //     // mediumScreen: Container(
        //     //   color: Colors.black,
        //     // ),
        //     smallScreen: HomePageSmall(),
        //   ),
        // ),
        );
  }
}
