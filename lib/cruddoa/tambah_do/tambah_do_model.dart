import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_do_widget.dart' show TambahDoWidget;
import 'package:flutter/material.dart';

class TambahDoModel extends FlutterFlowModel<TambahDoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldJudulDOa widget.
  FocusNode? textFieldJudulDOaFocusNode;
  TextEditingController? textFieldJudulDOaTextController;
  String? Function(BuildContext, String?)?
      textFieldJudulDOaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Tambahdoa)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldJudulDOaFocusNode?.dispose();
    textFieldJudulDOaTextController?.dispose();
  }
}
