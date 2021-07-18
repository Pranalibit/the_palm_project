library globals;

import 'package:flutter/material.dart';

Map<String, int> roomCount = {'Deluxe': 5, 'Bamboo': 6, 'Standard': 9};

Map<String, int> roomCountCopy = {'Deluxe': 5, 'Bamboo': 6, 'Standard': 9};

Map<String, int> userDict = {
  'Deluxe': deluxeCounter.value,
  'Bamboo': bambooCounter.value,
  'Standard': standardCounter.value
};

var room = ["Regular", "Deluxe", "Bamboo"];

double serviceCharges = 100;

var currentItemSelected;
int maxRoom;
var status;
int value = 0;

Map<String, dynamic> values;

final standardCounter = ValueNotifier<int>(0);
final deluxeCounter = ValueNotifier<int>(0);
final bambooCounter = ValueNotifier<int>(0);
final standardRoomCost = ValueNotifier<double>(0);
final bambooRoomCost = ValueNotifier<double>(0);
final deluxeRoomCost = ValueNotifier<double>(0);
final tax = ValueNotifier<double>(0);
final totalCost = ValueNotifier<double>(serviceCharges);

//update dates in UI var
final fromDate = ValueNotifier<DateTime>(
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
final toDate = ValueNotifier<DateTime>(
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));

String link;



// {
//     "status": "success",
//     "data": {
//         "id": "inv_HWVZ9GRkTW90FL",
//         "entity": "invoice",
//         "receipt": null,
//         "invoice_number": null,
//         "customer_id": null,
//         "customer_details": {
//             "id": null,
//             "name": null,
//             "email": null,
//             "contact": null,
//             "gstin": null,
//             "billing_address": null,
//             "shipping_address": null,
//             "customer_name": null,
//             "customer_email": null,
//             "customer_contact": null
//         },
//         "order_id": "order_HWVZ9IApyM9j4H",
//         "line_items": [],
//         "payment_id": null,
//         "status": "issued",
//         "expire_by": null,
//         "issued_at": 1625762921,
//         "paid_at": null,
//         "cancelled_at": null,
//         "expired_at": null,
//         "sms_status": "pending",
//         "email_status": "pending",
//         "date": 1625762921,
//         "terms": null,
//         "partial_payment": false,
//         "gross_amount": 230000,
//         "tax_amount": 0,
//         "taxable_amount": 0,
//         "amount": 230000,
//         "amount_paid": 0,
//         "amount_due": 230000,
//         "currency": "INR",
//         "currency_symbol": "₹",
//         "description": "The Palm Payment",
//         "notes": [],
//         "comment": null,
//         "short_url": "https://rzp.io/i/LxjHxPurj",
//         "view_less": true,
//         "billing_start": null,
//         "billing_end": null,
//         "type": "link",
//         "group_taxes_discounts": false,
//         "user": null,
//         "created_at": 1625762921
//     }
// }