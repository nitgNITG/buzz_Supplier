import '/flutter_flow/flutter_flow_util.dart';
import 'rate_supplier_widget.dart' show RateSupplierWidget;
import 'package:flutter/material.dart';

class RateSupplierModel extends FlutterFlowModel<RateSupplierWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
