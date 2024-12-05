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

Future supplierReview(DocumentReference supplier) async {
  // Add your function code here!
  double totalRating = 0.0;
  double avg = 0.0;
  var review = await supplier.collection('SupplierRating').get();
  if (review.docs.isNotEmpty) {
    review.docs.forEach((element) {
      totalRating += element['Rate'];
    });
    avg = double.parse(
        (totalRating / double.parse(review.docs.length.toString()))
            .toStringAsFixed(1));
  }
  supplier.update({'AvgRating': avg});
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
