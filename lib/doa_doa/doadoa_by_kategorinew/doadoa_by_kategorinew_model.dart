import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doadoa_by_kategorinew_widget.dart' show DoadoaByKategorinewWidget;
import 'package:flutter/material.dart';

class DoadoaByKategorinewModel
    extends FlutterFlowModel<DoadoaByKategorinewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch1 widget.
  final textFieldSearch1Key = GlobalKey();
  FocusNode? textFieldSearch1FocusNode;
  TextEditingController? textFieldSearch1TextController;
  String? textFieldSearch1SelectedOption;
  String? Function(BuildContext, String?)?
      textFieldSearch1TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldSearch1FocusNode?.dispose();
  }
}
