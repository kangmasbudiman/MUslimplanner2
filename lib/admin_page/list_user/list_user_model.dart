import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'list_user_widget.dart' show ListUserWidget;
import 'package:flutter/material.dart';

class ListUserModel extends FlutterFlowModel<ListUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchTex widget.
  final searchTexKey = GlobalKey();
  FocusNode? searchTexFocusNode;
  TextEditingController? searchTexTextController;
  String? searchTexSelectedOption;
  String? Function(BuildContext, String?)? searchTexTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTexFocusNode?.dispose();
  }
}
