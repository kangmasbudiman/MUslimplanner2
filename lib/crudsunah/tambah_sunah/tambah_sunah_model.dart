import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tambah_sunah_widget.dart' show TambahSunahWidget;
import 'package:flutter/material.dart';

class TambahSunahModel extends FlutterFlowModel<TambahSunahWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldSunah widget.
  FocusNode? textFieldSunahFocusNode;
  TextEditingController? textFieldSunahTextController;
  String? Function(BuildContext, String?)?
      textFieldSunahTextControllerValidator;
  // Stores action output result for [Backend Call - API (tambahsunah)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldSunahFocusNode?.dispose();
    textFieldSunahTextController?.dispose();
  }
}
