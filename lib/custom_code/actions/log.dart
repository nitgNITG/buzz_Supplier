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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> log(
  BuildContext context,
  String phoneNumber,
  String password,
  String countryPhoneCode,
) async {
  try {
    // Retrieve user data using phone number
    QuerySnapshot userSnapshot = await FirebaseFirestore.instance
        .collection('User')
        .where('phone_number', isEqualTo: '$countryPhoneCode$phoneNumber')
        .where('Type', isEqualTo: 'Supplier')
        .limit(1)
        .get();

    if (userSnapshot.docs.isEmpty) {
      throw Exception("User not found");
    }

    String email = userSnapshot.docs.first['email'];

    // Sign in with email and password
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return true;
  } on FirebaseAuthException catch (e) {
    // Handle Firebase-specific errors
    if (e.code == 'wrong-password') {
      _showErrorSnackBar(context, "Password is wrong, please try again.");
    } else if (e.code == 'user-not-found') {
      _showErrorSnackBar(context, "User not found.");
    } else {
      _showErrorSnackBar(context, e.message ?? "Login failed.");
    }
  } catch (e) {
    // Handle other errors
    _showErrorSnackBar(context, e.toString());
  }

  // Return false to indicate failure
  return false;
}

void _showErrorSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
