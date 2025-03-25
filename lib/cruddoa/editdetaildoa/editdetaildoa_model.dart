import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editdetaildoa_widget.dart' show EditdetaildoaWidget;
import 'package:flutter/material.dart';

class EditdetaildoaModel extends FlutterFlowModel<EditdetaildoaWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (DeleteDetaildoa)] action in Icon widget.
  ApiCallResponse? apiResultlsk;
  // State field(s) for TextFielArab widget.
  FocusNode? textFielArabFocusNode;
  TextEditingController? textFielArabTextController;
  String? Function(BuildContext, String?)? textFielArabTextControllerValidator;
  // State field(s) for TextFieldLatin widget.
  FocusNode? textFieldLatinFocusNode;
  TextEditingController? textFieldLatinTextController;
  String? Function(BuildContext, String?)?
      textFieldLatinTextControllerValidator;
  // State field(s) for txtpengulangandoa widget.
  FocusNode? txtpengulangandoaFocusNode;
  TextEditingController? txtpengulangandoaTextController;
  String? Function(BuildContext, String?)?
      txtpengulangandoaTextControllerValidator;
  // State field(s) for TextFieldTerjemahan widget.
  FocusNode? textFieldTerjemahanFocusNode;
  TextEditingController? textFieldTerjemahanTextController;
  String? Function(BuildContext, String?)?
      textFieldTerjemahanTextControllerValidator;
  // State field(s) for TextFieldHadis widget.
  FocusNode? textFieldHadisFocusNode;
  TextEditingController? textFieldHadisTextController;
  String? Function(BuildContext, String?)?
      textFieldHadisTextControllerValidator;
  // Stores action output result for [Backend Call - API (Editdetaildoa)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFielArabFocusNode?.dispose();
    textFielArabTextController?.dispose();

    textFieldLatinFocusNode?.dispose();
    textFieldLatinTextController?.dispose();

    txtpengulangandoaFocusNode?.dispose();
    txtpengulangandoaTextController?.dispose();

    textFieldTerjemahanFocusNode?.dispose();
    textFieldTerjemahanTextController?.dispose();

    textFieldHadisFocusNode?.dispose();
    textFieldHadisTextController?.dispose();
  }
}
