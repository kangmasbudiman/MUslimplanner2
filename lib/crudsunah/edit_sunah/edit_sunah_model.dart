import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_sunah_widget.dart' show EditSunahWidget;
import 'package:flutter/material.dart';

class EditSunahModel extends FlutterFlowModel<EditSunahWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (DeleteDoa)] action in Icon widget.
  ApiCallResponse? apiResultlsk;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldJudulDOa widget.
  FocusNode? textFieldJudulDOaFocusNode;
  TextEditingController? textFieldJudulDOaTextController;
  String? Function(BuildContext, String?)?
      textFieldJudulDOaTextControllerValidator;
  // State field(s) for TextFielArab widget.
  FocusNode? textFielArabFocusNode;
  TextEditingController? textFielArabTextController;
  String? Function(BuildContext, String?)? textFielArabTextControllerValidator;
  // State field(s) for TextFieldLatin widget.
  FocusNode? textFieldLatinFocusNode;
  TextEditingController? textFieldLatinTextController;
  String? Function(BuildContext, String?)?
      textFieldLatinTextControllerValidator;
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
  // Stores action output result for [Backend Call - API (EditDoa)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldJudulDOaFocusNode?.dispose();
    textFieldJudulDOaTextController?.dispose();

    textFielArabFocusNode?.dispose();
    textFielArabTextController?.dispose();

    textFieldLatinFocusNode?.dispose();
    textFieldLatinTextController?.dispose();

    textFieldTerjemahanFocusNode?.dispose();
    textFieldTerjemahanTextController?.dispose();

    textFieldHadisFocusNode?.dispose();
    textFieldHadisTextController?.dispose();
  }
}
