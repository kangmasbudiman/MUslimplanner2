import '/backend/api_requests/api_calls.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'home_doa_widget.dart' show HomeDoaWidget;
import 'package:flutter/material.dart';

class HomeDoaModel extends FlutterFlowModel<HomeDoaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSearch1 widget.
  final textFieldSearch1Key = GlobalKey();
  FocusNode? textFieldSearch1FocusNode;
  TextEditingController? textFieldSearch1TextController;
  String? textFieldSearch1SelectedOption;
  String? Function(BuildContext, String?)?
      textFieldSearch1TextControllerValidator;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  /// Query cache managers for this widget.

  final _semuadoaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> semuadoa({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _semuadoaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSemuadoaCache() => _semuadoaManager.clear();
  void clearSemuadoaCacheKey(String? uniqueKey) =>
      _semuadoaManager.clearRequest(uniqueKey);

  final _pagipetangManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> pagipetang({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _pagipetangManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPagipetangCache() => _pagipetangManager.clear();
  void clearPagipetangCacheKey(String? uniqueKey) =>
      _pagipetangManager.clearRequest(uniqueKey);

  final _rumahManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> rumah({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _rumahManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearRumahCache() => _rumahManager.clear();
  void clearRumahCacheKey(String? uniqueKey) =>
      _rumahManager.clearRequest(uniqueKey);

  final _makandanMinumManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> makandanMinum({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _makandanMinumManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMakandanMinumCache() => _makandanMinumManager.clear();
  void clearMakandanMinumCacheKey(String? uniqueKey) =>
      _makandanMinumManager.clearRequest(uniqueKey);

  final _bahagiadanSedihManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> bahagiadanSedih({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _bahagiadanSedihManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBahagiadanSedihCache() => _bahagiadanSedihManager.clear();
  void clearBahagiadanSedihCacheKey(String? uniqueKey) =>
      _bahagiadanSedihManager.clearRequest(uniqueKey);

  final _perjalananManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> perjalanan({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _perjalananManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPerjalananCache() => _perjalananManager.clear();
  void clearPerjalananCacheKey(String? uniqueKey) =>
      _perjalananManager.clearRequest(uniqueKey);

  final _sholatManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> sholat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _sholatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSholatCache() => _sholatManager.clear();
  void clearSholatCacheKey(String? uniqueKey) =>
      _sholatManager.clearRequest(uniqueKey);

  final _memujiAlllahManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> memujiAlllah({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _memujiAlllahManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMemujiAlllahCache() => _memujiAlllahManager.clear();
  void clearMemujiAlllahCacheKey(String? uniqueKey) =>
      _memujiAlllahManager.clearRequest(uniqueKey);

  final _hajiUmrohManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> hajiUmroh({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _hajiUmrohManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHajiUmrohCache() => _hajiUmrohManager.clear();
  void clearHajiUmrohCacheKey(String? uniqueKey) =>
      _hajiUmrohManager.clearRequest(uniqueKey);

  final _etikaBaikManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> etikaBaik({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _etikaBaikManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearEtikaBaikCache() => _etikaBaikManager.clear();
  void clearEtikaBaikCacheKey(String? uniqueKey) =>
      _etikaBaikManager.clearRequest(uniqueKey);

  final _alamManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> alam({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _alamManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAlamCache() => _alamManager.clear();
  void clearAlamCacheKey(String? uniqueKey) =>
      _alamManager.clearRequest(uniqueKey);

  final _sakitManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> sakit({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _sakitManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSakitCache() => _sakitManager.clear();
  void clearSakitCacheKey(String? uniqueKey) =>
      _sakitManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    textFieldSearch1FocusNode?.dispose();

    navbarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearSemuadoaCache();

    clearPagipetangCache();

    clearRumahCache();

    clearMakandanMinumCache();

    clearBahagiadanSedihCache();

    clearPerjalananCache();

    clearSholatCache();

    clearMemujiAlllahCache();

    clearHajiUmrohCache();

    clearEtikaBaikCache();

    clearAlamCache();

    clearSakitCache();
  }
}
