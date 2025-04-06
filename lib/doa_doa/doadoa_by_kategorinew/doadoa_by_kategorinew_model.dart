import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

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

  /// Query cache managers for this widget.

  final _kategorilistManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> kategorilist({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _kategorilistManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearKategorilistCache() => _kategorilistManager.clear();
  void clearKategorilistCacheKey(String? uniqueKey) =>
      _kategorilistManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldSearch1FocusNode?.dispose();

    /// Dispose query cache managers for this widget.

    clearKategorilistCache();
  }
}
