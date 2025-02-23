import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'statistik_widget.dart' show StatistikWidget;
import 'package:flutter/material.dart';

class StatistikModel extends FlutterFlowModel<StatistikWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dateComponen component.
  late DateComponenModel dateComponenModel;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultbq1;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {
    dateComponenModel = createModel(context, () => DateComponenModel());
  }

  @override
  void dispose() {
    dateComponenModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
