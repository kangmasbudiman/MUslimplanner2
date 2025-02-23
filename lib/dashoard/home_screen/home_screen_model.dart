import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'dart:async';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (myexpired)] action in HomeScreen widget.
  ApiCallResponse? apiResultf33;
  // Model for dateComponen component.
  late DateComponenModel dateComponenModel;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? apiResultkdj;
  bool apiRequestCompleted6 = false;
  String? apiRequestLastUniqueKey6;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunnah;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? apiResultk4;
  bool apiRequestCompleted7 = false;
  String? apiRequestLastUniqueKey7;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunna4;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? apiResultfni;
  bool apiRequestCompleted4 = false;
  String? apiRequestLastUniqueKey4;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunnah5;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? apiResultxrp;
  bool apiRequestCompleted3 = false;
  String? apiRequestLastUniqueKey3;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunnah6;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? apiResult25b;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunna7;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? apiResult000;
  bool apiRequestCompleted5 = false;
  String? apiRequestLastUniqueKey5;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunnah8;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? result9;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunnah9;
  // Stores action output result for [Backend Call - API (tambahSummary)] action in Icon widget.
  ApiCallResponse? result10;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  // Stores action output result for [Backend Call - API (deleteMysunnah)] action in Icon widget.
  ApiCallResponse? apiResultkdDeleteSunnah10;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  /// Query cache managers for this widget.

  final _newTManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> newT({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _newTManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNewTCache() => _newTManager.clear();
  void clearNewTCacheKey(String? uniqueKey) =>
      _newTManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    dateComponenModel = createModel(context, () => DateComponenModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    dateComponenModel.dispose();
    navbarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearNewTCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted6({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted6;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted7({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted7;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted4;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted3;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted5;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
