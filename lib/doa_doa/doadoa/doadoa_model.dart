import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doadoa_widget.dart' show DoadoaWidget;
import 'package:flutter/material.dart';

class DoadoaModel extends FlutterFlowModel<DoadoaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch1 widget.
  final textFieldSearch1Key = GlobalKey();
  FocusNode? textFieldSearch1FocusNode;
  TextEditingController? textFieldSearch1TextController;
  String? textFieldSearch1SelectedOption;
  String? Function(BuildContext, String?)?
      textFieldSearch1TextControllerValidator;
  // Stores action output result for [Backend Call - API (userActivityLog)] action in Containerayat1 widget.
  ApiCallResponse? apiResult8092;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldSearch1FocusNode?.dispose();
  }
}
