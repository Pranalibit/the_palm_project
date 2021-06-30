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
int serviceCharges = 100;
var currentItemSelected;
int maxRoom;
var status;
int value = 0;
String chosenValue;
bool buttonStatus = true;
String selectedRoom;
String toDateVar;
String fromDateVar;
final standardCounter = ValueNotifier<int>(0);
final deluxeCounter = ValueNotifier<int>(0);
final bambooCounter = ValueNotifier<int>(0);
final standardRoomCost = ValueNotifier<int>(0);
final bambooRoomCost = ValueNotifier<int>(0);
final deluxeRoomCost = ValueNotifier<int>(0);
final tax = ValueNotifier<double>(0);
final totalCost = ValueNotifier<double>(0);
final fromDate = ValueNotifier<DateTime>(
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
final toDate = ValueNotifier<DateTime>(
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));

void costOfStandard() {
  print('Standard Room Cost ${standardRoomCost.value}');
  print('Standard Counter ${standardCounter.value}');
  standardRoomCost.value = (standardCounter.value + 1) * 500;
  print('Bamboo Room Cost ${standardRoomCost.value}');
}

void costOfBamboo() {
  print('Bamboo Room Cost ${bambooRoomCost.value}');
  bambooRoomCost.value = (bambooCounter.value + 1) * 1000;
  print('Bamboo Room Cost ${bambooRoomCost.value}');
}

void costOfDeluxe() {
  print('Deluxe Room Cost ${deluxeRoomCost.value}');
  deluxeRoomCost.value = (deluxeCounter.value + 1) * 1500;
  print('Deluxe Room Cost ${deluxeRoomCost.value}');
}

void costOfTax() {
  print('Tax Cost ${tax.value}');
  tax.value = 0.18 *
      (standardRoomCost.value + bambooRoomCost.value + deluxeRoomCost.value);
  print('Tax Cost ${tax.value}');
}

void totalCostRoom() {
  totalCost.value = standardRoomCost.value +
      bambooRoomCost.value +
      deluxeRoomCost.value +
      tax.value +
      serviceCharges;
}
