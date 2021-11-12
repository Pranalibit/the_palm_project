// @dart=2.9
import 'package:flutter/material.dart';
import 'package:palm/pages/payment_pages/payment_page1.dart';
import 'package:palm/pages/payment_pages/payment_page2.dart';
import 'package:palm/pages/payment_pages/widgets/Checkout/checkout.dart';

import 'package:palm/utils/responsive_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: SafeArea(
          child: ResponsiveWidget(
        desktop: PaymentPageDesktop(),
        mobile: PaymentMobile(),
      )),
    ));
  }
}
