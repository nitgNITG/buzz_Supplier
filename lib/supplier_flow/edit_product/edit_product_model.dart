import '/flutter_flow/flutter_flow_util.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:flutter/material.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  String? _productNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2yxe6ewg' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xh8afo9q' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Descreption widget.
  FocusNode? descreptionFocusNode1;
  TextEditingController? descreptionTextController1;
  String? Function(BuildContext, String?)? descreptionTextController1Validator;
  String? _descreptionTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'prz5c2ir' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Descreption widget.
  FocusNode? descreptionFocusNode2;
  TextEditingController? descreptionTextController2;
  String? Function(BuildContext, String?)? descreptionTextController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    productNameTextControllerValidator = _productNameTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    descreptionTextController1Validator = _descreptionTextController1Validator;
  }

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    descreptionFocusNode1?.dispose();
    descreptionTextController1?.dispose();

    descreptionFocusNode2?.dispose();
    descreptionTextController2?.dispose();
  }
}
