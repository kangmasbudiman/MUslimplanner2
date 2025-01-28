import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_fadilah_widget.dart' show TambahFadilahWidget;
import 'package:flutter/material.dart';

class TambahFadilahModel extends FlutterFlowModel<TambahFadilahWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldFadilah widget.
  FocusNode? textFieldFadilahFocusNode;
  TextEditingController? textFieldFadilahTextController;
  String? Function(BuildContext, String?)?
      textFieldFadilahTextControllerValidator;
  // State field(s) for TextFielPenjelasan widget.
  FocusNode? textFielPenjelasanFocusNode;
  TextEditingController? textFielPenjelasanTextController;
  String? Function(BuildContext, String?)?
      textFielPenjelasanTextControllerValidator;
  // Stores action output result for [Backend Call - API (tambahfadilah)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFadilahFocusNode?.dispose();
    textFieldFadilahTextController?.dispose();

    textFielPenjelasanFocusNode?.dispose();
    textFielPenjelasanTextController?.dispose();
  }
}
