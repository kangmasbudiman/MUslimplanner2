import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tambah_detaildoa_widget.dart' show TambahDetaildoaWidget;
import 'package:flutter/material.dart';

class TambahDetaildoaModel extends FlutterFlowModel<TambahDetaildoaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtbahasaarab widget.
  FocusNode? txtbahasaarabFocusNode;
  TextEditingController? txtbahasaarabTextController;
  String? Function(BuildContext, String?)? txtbahasaarabTextControllerValidator;
  // State field(s) for txtbahasalatin widget.
  FocusNode? txtbahasalatinFocusNode;
  TextEditingController? txtbahasalatinTextController;
  String? Function(BuildContext, String?)?
      txtbahasalatinTextControllerValidator;
  // State field(s) for txtterjemahan widget.
  FocusNode? txtterjemahanFocusNode;
  TextEditingController? txtterjemahanTextController;
  String? Function(BuildContext, String?)? txtterjemahanTextControllerValidator;
  // State field(s) for txthadis widget.
  FocusNode? txthadisFocusNode;
  TextEditingController? txthadisTextController;
  String? Function(BuildContext, String?)? txthadisTextControllerValidator;
  // Stores action output result for [Backend Call - API (Tambahdetaidoa)] action in Button widget.
  ApiCallResponse? apiResultrbj;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtbahasaarabFocusNode?.dispose();
    txtbahasaarabTextController?.dispose();

    txtbahasalatinFocusNode?.dispose();
    txtbahasalatinTextController?.dispose();

    txtterjemahanFocusNode?.dispose();
    txtterjemahanTextController?.dispose();

    txthadisFocusNode?.dispose();
    txthadisTextController?.dispose();
  }
}
