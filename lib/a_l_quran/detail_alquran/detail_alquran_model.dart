import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_alquran_widget.dart' show DetailAlquranWidget;
import 'package:flutter/material.dart';

class DetailAlquranModel extends FlutterFlowModel<DetailAlquranWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtString widget.
  FocusNode? txtStringFocusNode;
  TextEditingController? txtStringTextController;
  String? Function(BuildContext, String?)? txtStringTextControllerValidator;
  // Stores action output result for [Backend Call - API (addBookmark)] action in Icon widget.
  ApiCallResponse? apiResulteh0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtStringFocusNode?.dispose();
    txtStringTextController?.dispose();
  }
}
