import '/flutter_flow/flutter_flow_util.dart';
import 'forgote_password_widget.dart' show ForgotePasswordWidget;
import 'package:flutter/material.dart';

class ForgotePasswordModel extends FlutterFlowModel<ForgotePasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtemail widget.
  FocusNode? txtemailFocusNode;
  TextEditingController? txtemailTextController;
  String? Function(BuildContext, String?)? txtemailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtemailFocusNode?.dispose();
    txtemailTextController?.dispose();
  }
}
