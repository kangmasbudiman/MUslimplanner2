import '/componen/date_componen/date_componen_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'newkiblat_widget.dart' show NewkiblatWidget;
import 'package:flutter/material.dart';

class NewkiblatModel extends FlutterFlowModel<NewkiblatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dateComponen component.
  late DateComponenModel dateComponenModel;

  @override
  void initState(BuildContext context) {
    dateComponenModel = createModel(context, () => DateComponenModel());
  }

  @override
  void dispose() {
    dateComponenModel.dispose();
  }
}
