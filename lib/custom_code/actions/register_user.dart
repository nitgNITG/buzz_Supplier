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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert'; // for the utf8.encode method

// Function to check if the phone number exists
Future<bool> phoneNumberExists(String phoneNumber) async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('User')
      .where('phone_number', isEqualTo: phoneNumber)
      .get();

  return querySnapshot.docs.isNotEmpty;
}

// Function to hash the password
String hashPassword(String password) {
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

// Function to register the user
Future<bool> registerUser(
  BuildContext context,
  String fullName,
  String phoneNumber,
  String countryPhoneCode,
  String email,
  String password,
  String confirmPassword,
) async {
  try {
    if (password != confirmPassword) {
      throw Exception('Passwords do not match');
    }

    // Check if phone number already exists
    bool phoneExists = await phoneNumberExists('$countryPhoneCode$phoneNumber');
    if (phoneExists) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Phone number already exists')),
      );
      return false;
    }

    // Hash the password
    final hashedPassword = hashPassword(password);

    // Create a new user in Firebase Auth
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Save user details in Firestore
    await FirebaseFirestore.instance
        .collection('User')
        .doc(userCredential.user?.uid)
        .set({
      'display_name': fullName,
      'phone_number': '$countryPhoneCode$phoneNumber',
      'email': email,
      'password': hashedPassword,
    });

    // Return true to indicate successful registration
    return true;
  } on FirebaseAuthException catch (e) {
    // Handle Firebase-specific exceptions
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.message ?? 'Registration failed')),
    );
    return false;
  } on Exception catch (e) {
    // Handle other exceptions
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.toString())),
    );
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
