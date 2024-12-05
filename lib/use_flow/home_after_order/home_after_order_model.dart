import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_after_order_widget.dart' show HomeAfterOrderWidget;
import 'package:flutter/material.dart';

class HomeAfterOrderModel extends FlutterFlowModel<HomeAfterOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<OrderRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
