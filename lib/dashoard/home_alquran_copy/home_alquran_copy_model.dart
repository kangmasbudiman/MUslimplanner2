import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_alquran_copy_widget.dart' show HomeAlquranCopyWidget;
import 'package:flutter/material.dart';

class HomeAlquranCopyModel extends FlutterFlowModel<HomeAlquranCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navbarModel.dispose();
  }
}
