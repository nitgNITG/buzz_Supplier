import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_profile_widget.dart' show SupplierProfileWidget;
import 'package:flutter/material.dart';

class SupplierProfileModel extends FlutterFlowModel<SupplierProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode3;
  TextEditingController? fullNameTextController3;
  String? Function(BuildContext, String?)? fullNameTextController3Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode4;
  TextEditingController? fullNameTextController4;
  String? Function(BuildContext, String?)? fullNameTextController4Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode5;
  TextEditingController? fullNameTextController5;
  String? Function(BuildContext, String?)? fullNameTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    fullNameFocusNode3?.dispose();
    fullNameTextController3?.dispose();

    fullNameFocusNode4?.dispose();
    fullNameTextController4?.dispose();

    fullNameFocusNode5?.dispose();
    fullNameTextController5?.dispose();
  }
}
