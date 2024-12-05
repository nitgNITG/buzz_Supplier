import '/flutter_flow/flutter_flow_util.dart';
import 'login_sup_widget.dart' show LoginSupWidget;
import 'package:flutter/material.dart';

class LoginSupModel extends FlutterFlowModel<LoginSupWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;
  String? _textFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l9xi1mil' /* Field Is Required */,
      );
    }

    if (!RegExp('TextField.text.startsWith(\'0\') && TextField.text.length > 1')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9qx5jonu' /* must be number not start 0 */,
      );
    }
    return null;
  }

  // Stores action output result for [Custom Action - removeLeadingZero] action in Button widget.
  String? output;
  // Stores action output result for [Custom Action - checkPhoneNumberExists] action in Button widget.
  bool? checkCopy;

  @override
  void initState(BuildContext context) {
    textFieldTextControllerValidator = _textFieldTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
