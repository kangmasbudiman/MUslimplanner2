import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'myedit_profil_widget.dart' show MyeditProfilWidget;
import 'package:flutter/material.dart';

class MyeditProfilModel extends FlutterFlowModel<MyeditProfilWidget> {
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

  // State field(s) for TextieldTelp widget.
  FocusNode? textieldTelpFocusNode;
  TextEditingController? textieldTelpTextController;
  String? Function(BuildContext, String?)? textieldTelpTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel;

  @override
  void initState(BuildContext context) {
    textusernameTextControllerValidator = _textusernameTextControllerValidator;
    textemailTextControllerValidator = _textemailTextControllerValidator;
    footerLogoModel = createModel(context, () => FooterLogoModel());
  }

  @override
  void dispose() {
    textusernameFocusNode?.dispose();
    textusernameTextController?.dispose();

    textemailFocusNode?.dispose();
    textemailTextController?.dispose();

    textieldTelpFocusNode?.dispose();
    textieldTelpTextController?.dispose();

    footerLogoModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
