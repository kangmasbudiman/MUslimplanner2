import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldemail widget.
  FocusNode? textFieldemailFocusNode;
  TextEditingController? textFieldemailTextController;
  String? Function(BuildContext, String?)?
      textFieldemailTextControllerValidator;
  // State field(s) for TextFieldpassword widget.
  FocusNode? textFieldpasswordFocusNode;
  TextEditingController? textFieldpasswordTextController;
  late bool textFieldpasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldpasswordVisibility = false;
  }

  @override
  void dispose() {
    textFieldemailFocusNode?.dispose();
    textFieldemailTextController?.dispose();

    textFieldpasswordFocusNode?.dispose();
    textFieldpasswordTextController?.dispose();
  }
}
