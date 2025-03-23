import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listRecentCity =
          prefs.getStringList('ff_listRecentCity') ?? _listRecentCity;
    });
    _safeInit(() {
      _listRecentCountry =
          prefs.getStringList('ff_listRecentCountry') ?? _listRecentCountry;
    });
    _safeInit(() {
      _colorThemes =
          _colorFromIntValue(prefs.getInt('ff_colorThemes')) ?? _colorThemes;
    });
    _safeInit(() {
      _colorFontThemes =
          _colorFromIntValue(prefs.getInt('ff_colorFontThemes')) ??
              _colorFontThemes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool value) {
    _showFullList = value;
  }

  List<String> _productType = [];
  List<String> get productType => _productType;
  set productType(List<String> value) {
    _productType = value;
  }

  void addToProductType(String value) {
    productType.add(value);
  }

  void removeFromProductType(String value) {
    productType.remove(value);
  }

  void removeAtIndexFromProductType(int index) {
    productType.removeAt(index);
  }

  void updateProductTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    productType[index] = updateFn(_productType[index]);
  }

  void insertAtIndexInProductType(int index, String value) {
    productType.insert(index, value);
  }

  List<String> _categryList = [];
  List<String> get categryList => _categryList;
  set categryList(List<String> value) {
    _categryList = value;
  }

  void addToCategryList(String value) {
    categryList.add(value);
  }

  void removeFromCategryList(String value) {
    categryList.remove(value);
  }

  void removeAtIndexFromCategryList(int index) {
    categryList.removeAt(index);
  }

  void updateCategryListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    categryList[index] = updateFn(_categryList[index]);
  }

  void insertAtIndexInCategryList(int index, String value) {
    categryList.insert(index, value);
  }

  String _setAyat = '';
  String get setAyat => _setAyat;
  set setAyat(String value) {
    _setAyat = value;
  }

  String _pencariansurah = 'noSearch';
  String get pencariansurah => _pencariansurah;
  set pencariansurah(String value) {
    _pencariansurah = value;
  }

  List<dynamic> _datasurah = [];
  List<dynamic> get datasurah => _datasurah;
  set datasurah(List<dynamic> value) {
    _datasurah = value;
  }

  void addToDatasurah(dynamic value) {
    datasurah.add(value);
  }

  void removeFromDatasurah(dynamic value) {
    datasurah.remove(value);
  }

  void removeAtIndexFromDatasurah(int index) {
    datasurah.removeAt(index);
  }

  void updateDatasurahAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    datasurah[index] = updateFn(_datasurah[index]);
  }

  void insertAtIndexInDatasurah(int index, dynamic value) {
    datasurah.insert(index, value);
  }

  List<dynamic> _initialsurah = [];
  List<dynamic> get initialsurah => _initialsurah;
  set initialsurah(List<dynamic> value) {
    _initialsurah = value;
  }

  void addToInitialsurah(dynamic value) {
    initialsurah.add(value);
  }

  void removeFromInitialsurah(dynamic value) {
    initialsurah.remove(value);
  }

  void removeAtIndexFromInitialsurah(int index) {
    initialsurah.removeAt(index);
  }

  void updateInitialsurahAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    initialsurah[index] = updateFn(_initialsurah[index]);
  }

  void insertAtIndexInInitialsurah(int index, dynamic value) {
    initialsurah.insert(index, value);
  }

  bool _shopassword = false;
  bool get shopassword => _shopassword;
  set shopassword(bool value) {
    _shopassword = value;
  }

  String _JK = '';
  String get JK => _JK;
  set JK(String value) {
    _JK = value;
  }

  String _idkategori = '';
  String get idkategori => _idkategori;
  set idkategori(String value) {
    _idkategori = value;
  }

  String _totalRate = '';
  String get totalRate => _totalRate;
  set totalRate(String value) {
    _totalRate = value;
  }

  String _yangDirate = '';
  String get yangDirate => _yangDirate;
  set yangDirate(String value) {
    _yangDirate = value;
  }

  String _biayasubscrib = '';
  String get biayasubscrib => _biayasubscrib;
  set biayasubscrib(String value) {
    _biayasubscrib = value;
  }

  List<String> _listRecentCity = [];
  List<String> get listRecentCity => _listRecentCity;
  set listRecentCity(List<String> value) {
    _listRecentCity = value;
    prefs.setStringList('ff_listRecentCity', value);
  }

  void addToListRecentCity(String value) {
    listRecentCity.add(value);
    prefs.setStringList('ff_listRecentCity', _listRecentCity);
  }

  void removeFromListRecentCity(String value) {
    listRecentCity.remove(value);
    prefs.setStringList('ff_listRecentCity', _listRecentCity);
  }

  void removeAtIndexFromListRecentCity(int index) {
    listRecentCity.removeAt(index);
    prefs.setStringList('ff_listRecentCity', _listRecentCity);
  }

  void updateListRecentCityAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listRecentCity[index] = updateFn(_listRecentCity[index]);
    prefs.setStringList('ff_listRecentCity', _listRecentCity);
  }

  void insertAtIndexInListRecentCity(int index, String value) {
    listRecentCity.insert(index, value);
    prefs.setStringList('ff_listRecentCity', _listRecentCity);
  }

  List<String> _listRecentCountry = [];
  List<String> get listRecentCountry => _listRecentCountry;
  set listRecentCountry(List<String> value) {
    _listRecentCountry = value;
    prefs.setStringList('ff_listRecentCountry', value);
  }

  void addToListRecentCountry(String value) {
    listRecentCountry.add(value);
    prefs.setStringList('ff_listRecentCountry', _listRecentCountry);
  }

  void removeFromListRecentCountry(String value) {
    listRecentCountry.remove(value);
    prefs.setStringList('ff_listRecentCountry', _listRecentCountry);
  }

  void removeAtIndexFromListRecentCountry(int index) {
    listRecentCountry.removeAt(index);
    prefs.setStringList('ff_listRecentCountry', _listRecentCountry);
  }

  void updateListRecentCountryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listRecentCountry[index] = updateFn(_listRecentCountry[index]);
    prefs.setStringList('ff_listRecentCountry', _listRecentCountry);
  }

  void insertAtIndexInListRecentCountry(int index, String value) {
    listRecentCountry.insert(index, value);
    prefs.setStringList('ff_listRecentCountry', _listRecentCountry);
  }

  DateTime? _tanggalnya = DateTime.fromMillisecondsSinceEpoch(1717650060000);
  DateTime? get tanggalnya => _tanggalnya;
  set tanggalnya(DateTime? value) {
    _tanggalnya = value;
  }

  Color _colorThemes = Color(4278190080);
  Color get colorThemes => _colorThemes;
  set colorThemes(Color value) {
    _colorThemes = value;
    prefs.setInt('ff_colorThemes', value.value);
  }

  Color _colorFontThemes = Color(4294967295);
  Color get colorFontThemes => _colorFontThemes;
  set colorFontThemes(Color value) {
    _colorFontThemes = value;
    prefs.setInt('ff_colorFontThemes', value.value);
  }

  String _searchUser = '';
  String get searchUser => _searchUser;
  set searchUser(String value) {
    _searchUser = value;
  }

  bool _searchaktif = false;
  bool get searchaktif => _searchaktif;
  set searchaktif(bool value) {
    _searchaktif = value;
  }

  bool _ringtonePlay = false;
  bool get ringtonePlay => _ringtonePlay;
  set ringtonePlay(bool value) {
    _ringtonePlay = value;
  }

  bool _ringtonePlay2 = false;
  bool get ringtonePlay2 => _ringtonePlay2;
  set ringtonePlay2(bool value) {
    _ringtonePlay2 = value;
  }

  bool _ringtonePlay3 = false;
  bool get ringtonePlay3 => _ringtonePlay3;
  set ringtonePlay3(bool value) {
    _ringtonePlay3 = value;
  }

  bool _ringtonePlay4 = false;
  bool get ringtonePlay4 => _ringtonePlay4;
  set ringtonePlay4(bool value) {
    _ringtonePlay4 = value;
  }

  bool _ringtonePlay5 = false;
  bool get ringtonePlay5 => _ringtonePlay5;
  set ringtonePlay5(bool value) {
    _ringtonePlay5 = value;
  }

  bool _serachSurataktif = false;
  bool get serachSurataktif => _serachSurataktif;
  set serachSurataktif(bool value) {
    _serachSurataktif = value;
  }

  String _interval = '';
  String get interval => _interval;
  set interval(String value) {
    _interval = value;
  }

  DateTime? _expired;
  DateTime? get expired => _expired;
  set expired(DateTime? value) {
    _expired = value;
  }

  String _keyword = 'noSearch';
  String get keyword => _keyword;
  set keyword(String value) {
    _keyword = value;
  }

  bool _loginsosmed = false;
  bool get loginsosmed => _loginsosmed;
  set loginsosmed(bool value) {
    _loginsosmed = value;
  }

  bool _loginSosmed = false;
  bool get loginSosmed => _loginSosmed;
  set loginSosmed(bool value) {
    _loginSosmed = value;
  }

  bool _statusSearch = false;
  bool get statusSearch => _statusSearch;
  set statusSearch(bool value) {
    _statusSearch = value;
  }

  final _kategoriManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> kategori({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _kategoriManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearKategoriCache() => _kategoriManager.clear();
  void clearKategoriCacheKey(String? uniqueKey) =>
      _kategoriManager.clearRequest(uniqueKey);

  final _doabykatagoryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> doabykatagory({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _doabykatagoryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDoabykatagoryCache() => _doabykatagoryManager.clear();
  void clearDoabykatagoryCacheKey(String? uniqueKey) =>
      _doabykatagoryManager.clearRequest(uniqueKey);

  final _kategorisunahManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> kategorisunah({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _kategorisunahManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearKategorisunahCache() => _kategorisunahManager.clear();
  void clearKategorisunahCacheKey(String? uniqueKey) =>
      _kategorisunahManager.clearRequest(uniqueKey);

  final _listSuratManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> listSurat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _listSuratManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListSuratCache() => _listSuratManager.clear();
  void clearListSuratCacheKey(String? uniqueKey) =>
      _listSuratManager.clearRequest(uniqueKey);

  final _seacrhSuratManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> seacrhSurat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _seacrhSuratManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSeacrhSuratCache() => _seacrhSuratManager.clear();
  void clearSeacrhSuratCacheKey(String? uniqueKey) =>
      _seacrhSuratManager.clearRequest(uniqueKey);

  final _searchDoaBykategoriManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> searchDoaBykategori({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _searchDoaBykategoriManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSearchDoaBykategoriCache() => _searchDoaBykategoriManager.clear();
  void clearSearchDoaBykategoriCacheKey(String? uniqueKey) =>
      _searchDoaBykategoriManager.clearRequest(uniqueKey);

  final _qiyamulLailChaceManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> qiyamulLailChace({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _qiyamulLailChaceManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQiyamulLailChaceCache() => _qiyamulLailChaceManager.clear();
  void clearQiyamulLailChaceCacheKey(String? uniqueKey) =>
      _qiyamulLailChaceManager.clearRequest(uniqueKey);

  final _fajrChaceManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> fajrChace({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _fajrChaceManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFajrChaceCache() => _fajrChaceManager.clear();
  void clearFajrChaceCacheKey(String? uniqueKey) =>
      _fajrChaceManager.clearRequest(uniqueKey);

  final _zhuhrCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> zhuhrCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _zhuhrCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearZhuhrCacheCache() => _zhuhrCacheManager.clear();
  void clearZhuhrCacheCacheKey(String? uniqueKey) =>
      _zhuhrCacheManager.clearRequest(uniqueKey);

  final _ashrcacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> ashrcache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _ashrcacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAshrcacheCache() => _ashrcacheManager.clear();
  void clearAshrcacheCacheKey(String? uniqueKey) =>
      _ashrcacheManager.clearRequest(uniqueKey);

  final _magrbcacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> magrbcache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _magrbcacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMagrbcacheCache() => _magrbcacheManager.clear();
  void clearMagrbcacheCacheKey(String? uniqueKey) =>
      _magrbcacheManager.clearRequest(uniqueKey);

  final _isyacacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> isyacache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _isyacacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearIsyacacheCache() => _isyacacheManager.clear();
  void clearIsyacacheCacheKey(String? uniqueKey) =>
      _isyacacheManager.clearRequest(uniqueKey);

  final _tidurcahcheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> tidurcahche({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _tidurcahcheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTidurcahcheCache() => _tidurcahcheManager.clear();
  void clearTidurcahcheCacheKey(String? uniqueKey) =>
      _tidurcahcheManager.clearRequest(uniqueKey);

  final _lainlaincacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> lainlaincache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _lainlaincacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLainlaincacheCache() => _lainlaincacheManager.clear();
  void clearLainlaincacheCacheKey(String? uniqueKey) =>
      _lainlaincacheManager.clearRequest(uniqueKey);

  final _mybookmarkcacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> mybookmarkcache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _mybookmarkcacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMybookmarkcacheCache() => _mybookmarkcacheManager.clear();
  void clearMybookmarkcacheCacheKey(String? uniqueKey) =>
      _mybookmarkcacheManager.clearRequest(uniqueKey);

  final _listAlldoaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> listAlldoa({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _listAlldoaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListAlldoaCache() => _listAlldoaManager.clear();
  void clearListAlldoaCacheKey(String? uniqueKey) =>
      _listAlldoaManager.clearRequest(uniqueKey);

  final _carialldoaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> carialldoa({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _carialldoaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCarialldoaCache() => _carialldoaManager.clear();
  void clearCarialldoaCacheKey(String? uniqueKey) =>
      _carialldoaManager.clearRequest(uniqueKey);

  final _listAlldoakategoriManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> listAlldoakategori({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _listAlldoakategoriManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListAlldoakategoriCache() => _listAlldoakategoriManager.clear();
  void clearListAlldoakategoriCacheKey(String? uniqueKey) =>
      _listAlldoakategoriManager.clearRequest(uniqueKey);

  final _dhuhaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> dhuha({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _dhuhaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDhuhaCache() => _dhuhaManager.clear();
  void clearDhuhaCacheKey(String? uniqueKey) =>
      _dhuhaManager.clearRequest(uniqueKey);

  final _chacheAlldoaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> chacheAlldoa({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _chacheAlldoaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChacheAlldoaCache() => _chacheAlldoaManager.clear();
  void clearChacheAlldoaCacheKey(String? uniqueKey) =>
      _chacheAlldoaManager.clearRequest(uniqueKey);

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
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
