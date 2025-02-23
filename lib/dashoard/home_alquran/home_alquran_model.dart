import '/backend/api_requests/api_calls.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_alquran_widget.dart' show HomeAlquranWidget;
import 'package:flutter/material.dart';

class HomeAlquranModel extends FlutterFlowModel<HomeAlquranWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch widget.
  final textFieldSearchKey = GlobalKey();
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? textFieldSearchSelectedOption;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  // Stores action output result for [Backend Call - API (deletemybookmark)] action in Icon widget.
  ApiCallResponse? apiResultmh0;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    textFieldSearchFocusNode?.dispose();

    navbarModel.dispose();
  }
}
