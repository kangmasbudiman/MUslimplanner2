import '/backend/api_requests/api_calls.dart';
import '/componen/date_componen/date_componen_widget.dart';
import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'detail_jadwal_sholat_widget.dart' show DetailJadwalSholatWidget;
import 'package:flutter/material.dart';

class DetailJadwalSholatModel
    extends FlutterFlowModel<DetailJadwalSholatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dateComponen component.
  late DateComponenModel dateComponenModel;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel;

  /// Query cache managers for this widget.

  final _jadwalSholatManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> jadwalSholat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _jadwalSholatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearJadwalSholatCache() => _jadwalSholatManager.clear();
  void clearJadwalSholatCacheKey(String? uniqueKey) =>
      _jadwalSholatManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    dateComponenModel = createModel(context, () => DateComponenModel());
    footerLogoModel = createModel(context, () => FooterLogoModel());
  }

  @override
  void dispose() {
    dateComponenModel.dispose();
    footerLogoModel.dispose();

    /// Dispose query cache managers for this widget.

    clearJadwalSholatCache();
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
