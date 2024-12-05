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

Future<bool> changePassword(
  BuildContext context,
  String? password,
  String? oldPass,
) async {
  // Add your function code here!
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user = _auth.currentUser;
  AuthCredential credential = EmailAuthProvider.credential(
      email: user!.email!, password: oldPass.toString());

  try {
    await user.reauthenticateWithCredential(credential);
    await user.updatePassword(password!);
    SnackBar(
      content: Text(
        'Your password is changed',
        style: TextStyle(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
      duration: Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
    );
    print('Password updated successfully.');
    return true;
  } catch (e) {
    SnackBar(
      content: Text(
        'Your password is changed',
        style: TextStyle(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
      duration: Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
    );
    print('Error updating password: $e');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
