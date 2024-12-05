import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_add_products_widget.dart' show SupplierAddProductsWidget;
import 'package:flutter/material.dart';

class SupplierAddProductsModel
    extends FlutterFlowModel<SupplierAddProductsWidget> {
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
        'otbc06qk' /* Field is required */,
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
        'gne4cxbz' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for POffer widget.
  FocusNode? pOfferFocusNode;
  TextEditingController? pOfferTextController;
  String? Function(BuildContext, String?)? pOfferTextControllerValidator;
  // State field(s) for Descreption widget.
  FocusNode? descreptionFocusNode;
  TextEditingController? descreptionTextController;
  String? Function(BuildContext, String?)? descreptionTextControllerValidator;
  String? _descreptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5vqb3p66' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Offe widget.
  bool? offeValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    productNameTextControllerValidator = _productNameTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    descreptionTextControllerValidator = _descreptionTextControllerValidator;
  }

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    pOfferFocusNode?.dispose();
    pOfferTextController?.dispose();

    descreptionFocusNode?.dispose();
    descreptionTextController?.dispose();
  }
}
