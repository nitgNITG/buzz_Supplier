// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateQuantityInCart(
  CartRecord cartDocs,
  bool isIncrement,
  int listIndex,
) async {
  // Add your function code here!
  List data = [];

  cartDocs.productList.forEach((element) {
    data.add({
      'Quantity': isIncrement
          ? (listIndex == cartDocs.productList.indexOf(element))
              ? element.quantity + 1
              : element.quantity
          : (listIndex == cartDocs.productList.indexOf(element))
              ? element.quantity - 1
              : element.quantity,
      'price': element.price,
      'pro': element.pro,
    });
  });

  cartDocs.reference.update({
    'ProductList': data,
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
