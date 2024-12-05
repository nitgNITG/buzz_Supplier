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

Future<DocumentReference?> productRatings(
  DocumentReference? user,
  DocumentReference product,
) async {
  // Add your function code here!
  var rate = await FirebaseFirestore.instance
      .collection('Products')
      .doc(product.id)
      .collection('ProductRating')
      .where('User', isEqualTo: user)
      .get();

  var ref;
  if (rate.docs.length != 0) {
    rate.docs.forEach((element) {
      ref = element.reference;
    });

    return ref;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
