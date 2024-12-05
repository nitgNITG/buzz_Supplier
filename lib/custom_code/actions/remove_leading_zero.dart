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

String removeLeadingZero(String input) {
  // Check if the input starts with '0' and has more than one character
  if (input.startsWith('0') && input.length > 1) {
    return input.substring(1); // Return the string without the leading '0'
  }
  return input; // Return the original input if no leading '0' is found
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
