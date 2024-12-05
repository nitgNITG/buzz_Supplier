import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_edit_profile_widget.dart' show SupplierEditProfileWidget;
import 'package:flutter/material.dart';

class SupplierEditProfileModel
    extends FlutterFlowModel<SupplierEditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for Cat widget.
  FocusNode? catFocusNode;
  TextEditingController? catTextController;
  String? Function(BuildContext, String?)? catTextControllerValidator;
  String? _catTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9ndsm6o4' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'smx3o47a' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    catTextControllerValidator = _catTextControllerValidator;
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
  }

  @override
  void dispose() {
    catFocusNode?.dispose();
    catTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
