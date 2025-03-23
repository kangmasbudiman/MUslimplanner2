import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_doa_copy_widget.dart' show HomeDoaCopyWidget;
import 'package:flutter/material.dart';

class HomeDoaCopyModel extends FlutterFlowModel<HomeDoaCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch1 widget.
  final textFieldSearch1Key = GlobalKey();
  FocusNode? textFieldSearch1FocusNode;
  TextEditingController? textFieldSearch1TextController;
  String? textFieldSearch1SelectedOption;
  String? Function(BuildContext, String?)?
      textFieldSearch1TextControllerValidator;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    textFieldSearch1FocusNode?.dispose();

    navbarModel.dispose();
  }
}
