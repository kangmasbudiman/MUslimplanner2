import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Textusername widget.
  FocusNode? textusernameFocusNode;
  TextEditingController? textusernameTextController;
  String? Function(BuildContext, String?)? textusernameTextControllerValidator;
  String? _textusernameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Textemail widget.
  FocusNode? textemailFocusNode;
  TextEditingController? textemailTextController;
  String? Function(BuildContext, String?)? textemailTextControllerValidator;
  String? _textemailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextFieldpassword widget.
  FocusNode? textFieldpasswordFocusNode;
  TextEditingController? textFieldpasswordTextController;
  late bool textFieldpasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldpasswordTextControllerValidator;
  // State field(s) for TextFieldConfirmpassword widget.
  FocusNode? textFieldConfirmpasswordFocusNode;
  TextEditingController? textFieldConfirmpasswordTextController;
  late bool textFieldConfirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfirmpasswordTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    textusernameTextControllerValidator = _textusernameTextControllerValidator;
    textemailTextControllerValidator = _textemailTextControllerValidator;
    textFieldpasswordVisibility = false;
    textFieldConfirmpasswordVisibility = false;
  }

  @override
  void dispose() {
    textusernameFocusNode?.dispose();
    textusernameTextController?.dispose();

    textemailFocusNode?.dispose();
    textemailTextController?.dispose();

    textFieldpasswordFocusNode?.dispose();
    textFieldpasswordTextController?.dispose();

    textFieldConfirmpasswordFocusNode?.dispose();
    textFieldConfirmpasswordTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
