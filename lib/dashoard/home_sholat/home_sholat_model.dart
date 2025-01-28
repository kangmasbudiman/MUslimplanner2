import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'home_sholat_widget.dart' show HomeSholatWidget;
import 'package:flutter/material.dart';

class HomeSholatModel extends FlutterFlowModel<HomeSholatWidget> {
  ///  State fields for stateful widgets in this page.

  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for dateComponen component.
  late DateComponenModel dateComponenModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  /// Query cache managers for this widget.

  final _hijriDateSholatManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> hijriDateSholat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _hijriDateSholatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHijriDateSholatCache() => _hijriDateSholatManager.clear();
  void clearHijriDateSholatCacheKey(String? uniqueKey) =>
      _hijriDateSholatManager.clearRequest(uniqueKey);

  final _jadwalSholatHarianManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> jadwalSholatHarian({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _jadwalSholatHarianManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearJadwalSholatHarianCache() => _jadwalSholatHarianManager.clear();
  void clearJadwalSholatHarianCacheKey(String? uniqueKey) =>
      _jadwalSholatHarianManager.clearRequest(uniqueKey);

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

    clearHijriDateSholatCache();

    clearJadwalSholatHarianCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
