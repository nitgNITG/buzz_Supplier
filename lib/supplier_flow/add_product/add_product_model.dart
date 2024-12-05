import '/flutter_flow/flutter_flow_util.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for Descre widget.
  FocusNode? descreFocusNode;
  TextEditingController? descreTextController;
  String? Function(BuildContext, String?)? descreTextControllerValidator;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for Offe widget.
  FocusNode? offeFocusNode;
  TextEditingController? offeTextController;
  String? Function(BuildContext, String?)? offeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    descreFocusNode?.dispose();
    descreTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    offeFocusNode?.dispose();
    offeTextController?.dispose();
  }
}
