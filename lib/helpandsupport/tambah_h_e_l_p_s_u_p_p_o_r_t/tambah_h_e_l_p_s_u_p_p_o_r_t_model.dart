import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_h_e_l_p_s_u_p_p_o_r_t_widget.dart' show TambahHELPSUPPORTWidget;
import 'package:flutter/material.dart';

class TambahHELPSUPPORTModel extends FlutterFlowModel<TambahHELPSUPPORTWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldHelp widget.
  FocusNode? textFieldHelpFocusNode;
  TextEditingController? textFieldHelpTextController;
  String? Function(BuildContext, String?)? textFieldHelpTextControllerValidator;
  // Stores action output result for [Backend Call - API (tambahhelpsuport)] action in Button widget.
  ApiCallResponse? apiResultnvo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldHelpFocusNode?.dispose();
    textFieldHelpTextController?.dispose();
  }
}
