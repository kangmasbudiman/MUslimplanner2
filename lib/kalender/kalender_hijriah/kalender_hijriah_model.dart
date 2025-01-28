import '/backend/api_requests/api_calls.dart';
import '/componen/footer_logo/footer_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'kalender_hijriah_widget.dart' show KalenderHijriahWidget;
import 'package:flutter/material.dart';

class KalenderHijriahModel extends FlutterFlowModel<KalenderHijriahWidget> {
  ///  Local state fields for this page.

  bool showMasehi = false;

  ///  State fields for stateful widgets in this page.

  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel1;
  // Model for footerLogo component.
  late FooterLogoModel footerLogoModel2;

  /// Query cache managers for this widget.

  final _hijriDateCalendarManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> hijriDateCalendar({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _hijriDateCalendarManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHijriDateCalendarCache() => _hijriDateCalendarManager.clear();
  void clearHijriDateCalendarCacheKey(String? uniqueKey) =>
      _hijriDateCalendarManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    footerLogoModel1 = createModel(context, () => FooterLogoModel());
    footerLogoModel2 = createModel(context, () => FooterLogoModel());
  }

  @override
  void dispose() {
    footerLogoModel1.dispose();
    footerLogoModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearHijriDateCalendarCache();
  }
}
