import '/flutter_flow/flutter_flow_util.dart';
import 'register_with_o_t_p_widget.dart' show RegisterWithOTPWidget;
import 'package:flutter/material.dart';

class RegisterWithOTPModel extends FlutterFlowModel<RegisterWithOTPWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e9pjk63j' /* Field is required */,
      );
    }

    if (val.length > 25) {
      return 'Maximum 25 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for FullNameArabic widget.
  FocusNode? fullNameArabicFocusNode;
  TextEditingController? fullNameArabicTextController;
  String? Function(BuildContext, String?)?
      fullNameArabicTextControllerValidator;
  String? _fullNameArabicTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cnixsvj8' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '69e78k37' /* Phone Is Empty  */,
      );
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Custom Action - removeLeadingZero] action in Button widget.
  String? output;
  // Stores action output result for [Custom Action - checkPhoneNumberExists2] action in Button widget.
  bool? check;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    fullNameArabicTextControllerValidator =
        _fullNameArabicTextControllerValidator;
    textController3Validator = _textController3Validator;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    fullNameArabicFocusNode?.dispose();
    fullNameArabicTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
