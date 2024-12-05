import '/flutter_flow/flutter_flow_util.dart';
import 'payment_profile_copy_widget.dart' show PaymentProfileCopyWidget;
import 'package:flutter/material.dart';

class PaymentProfileCopyModel
    extends FlutterFlowModel<PaymentProfileCopyWidget> {
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
