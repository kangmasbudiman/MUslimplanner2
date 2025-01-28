import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_doa_copy_widget.dart' show EditDoaCopyWidget;
import 'package:flutter/material.dart';

class EditDoaCopyModel extends FlutterFlowModel<EditDoaCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (deletefadila)] action in Icon widget.
  ApiCallResponse? apiResultlsk;
  // State field(s) for TextFieldfadilah widget.
  FocusNode? textFieldfadilahFocusNode;
  TextEditingController? textFieldfadilahTextController;
  String? Function(BuildContext, String?)?
      textFieldfadilahTextControllerValidator;
  // State field(s) for TextFieldpenjelasan widget.
  FocusNode? textFieldpenjelasanFocusNode;
  TextEditingController? textFieldpenjelasanTextController;
  String? Function(BuildContext, String?)?
      textFieldpenjelasanTextControllerValidator;
  // Stores action output result for [Backend Call - API (editfadilah)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldfadilahFocusNode?.dispose();
    textFieldfadilahTextController?.dispose();

    textFieldpenjelasanFocusNode?.dispose();
    textFieldpenjelasanTextController?.dispose();
  }
}
