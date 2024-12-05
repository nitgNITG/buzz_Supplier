import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pas widget.
  FocusNode? pasFocusNode;
  TextEditingController? pasTextController;
  late bool pasVisibility;
  String? Function(BuildContext, String?)? pasTextControllerValidator;
  String? _pasTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hbo3itet' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassTextController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassTextControllerValidator;
  String? _newpassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7jx7aeb9' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }
    if (val.length > 25) {
      return 'Maximum 25 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for conpass widget.
  FocusNode? conpassFocusNode;
  TextEditingController? conpassTextController;
  late bool conpassVisibility;
  String? Function(BuildContext, String?)? conpassTextControllerValidator;
  String? _conpassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n1k82m55' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }
    if (val.length > 25) {
      return 'Maximum 25 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Custom Action - changePassword] action in Button widget.
  bool? isPasswordUpdated;

  @override
  void initState(BuildContext context) {
    pasVisibility = false;
    pasTextControllerValidator = _pasTextControllerValidator;
    newpassVisibility = false;
    newpassTextControllerValidator = _newpassTextControllerValidator;
    conpassVisibility = false;
    conpassTextControllerValidator = _conpassTextControllerValidator;
  }

  @override
  void dispose() {
    pasFocusNode?.dispose();
    pasTextController?.dispose();

    newpassFocusNode?.dispose();
    newpassTextController?.dispose();

    conpassFocusNode?.dispose();
    conpassTextController?.dispose();
  }
}
