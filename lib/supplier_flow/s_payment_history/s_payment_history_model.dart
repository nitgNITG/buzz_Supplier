import '/flutter_flow/flutter_flow_util.dart';
import 's_payment_history_widget.dart' show SPaymentHistoryWidget;
import 'package:flutter/material.dart';

class SPaymentHistoryModel extends FlutterFlowModel<SPaymentHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
