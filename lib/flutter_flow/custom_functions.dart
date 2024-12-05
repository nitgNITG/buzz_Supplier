import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? valueFromCoupon(
  double? total,
  double? percentage,
) {
  double price = (total! * percentage!) / 100;
  return price;
}

double fullTotal(
  double? total,
  double deliveryFee,
) {
  return ((total!) * (deliveryFee!));
}

String? filtring(String? cat) {
  return cat;
}

int? afterOfferd(
  int? price,
  int? percentage,
) {
  int total = price! - ((price * percentage!) ~/ 100);
  return total;
}

double? totalprice(
  double total,
  double? priceItem,
) {
  return ((total!) + (priceItem!));
}

double? subTotal(List<CartRecord>? total) {
  double finalTotal = 0.0;
  //print(total!.length);
  total!.forEach((element) {
    finalTotal += element.total;
    //print(element.total);
  });
  //print("finalllllll====${finalTotal}");
  return finalTotal;
}

double? subpriceTotal(
  double? price,
  double? quantity,
) {
  return price! * quantity!;
}

List<String>? filtringCopy() {
  final countries = [
    "+973",
    "+20",
    "+968",
    "+974",
    "+966",
    "+971",
  ];

  return countries;
}

String? filtringCopy2(String? countryName) {
  if (countryName == null) {
    return null;
  }
  final countryInfoJson = {
    "+973": {"dial_code": "+973", "code": "BH"},
    "+20": {"dial_code": "+20", "code": "EG"},
    "+968": {"dial_code": "+968", "code": "OM"},
    "+974": {"dial_code": "+974", "code": "QA"},
    "+966": {"dial_code": "+966", "code": "SA"},
    "+971": {"dial_code": "+971", "code": "AE"},
    "+965": {"dial_code": "+965", "code": "KW"},
  };

  final countryCode = countryInfoJson[countryName]?["code"];

  if (countryCode != null) {
    final countryCodeInLowerCase = countryCode.toLowerCase();
    return 'https://flagcdn.com/h80/$countryCodeInLowerCase.png';
  }

  return null;
}

String? filtringCopy2Copy(String? countryName) {
  if (countryName == null) {
    return null;
  }
  final countryInfoJson = {
    "+973": {"dial_code": "+973", "code": "BH"},
    "+20": {"dial_code": "+20", "code": "EG"},
    "+968": {"dial_code": "+968", "code": "OM"},
    "+974": {"dial_code": "+974", "code": "QA"},
    "+966": {"dial_code": "+966", "code": "SA"},
    "+971": {"dial_code": "+971", "code": "AE"},
  };

  final countryDialCode = countryInfoJson[countryName]?["dial_code"];

  if (countryDialCode != null) {
    return countryDialCode;
  }

  return null;
}

double? calculateTotalPrice(List<BrancheListStruct>? productList) {
  double totalPrice = 0.0;
  for (var proudct in productList!) {
    totalPrice += proudct!.total;
  }

  return totalPrice;
}

double? calculateTotalBranch(
  List<BrancheListStruct>? productList,
  String? branchAdress,
  String? orderAdress,
) {
  double totalPrice = 0.0;
  if (branchAdress == orderAdress) {
    for (var proudct in productList!) {
      totalPrice += proudct!.total;
      return totalPrice;
    }
  }
}

double? apppercentage(
  double? total,
  double? percentage,
) {
  double price = (total! * percentage!) / 100;
  return price;
}

double? supplierpercentage(
  double? total,
  double? subtotal,
) {
  double price = total! - subtotal!;
  return price;
}

double? calculateTotalPriceOnline(List<BrancheListStruct>? productList) {
  double totalPrice = 0.0;
  for (var proudct in productList!) {
    totalPrice += proudct!.totalOnline;
  }

  return totalPrice;
}
