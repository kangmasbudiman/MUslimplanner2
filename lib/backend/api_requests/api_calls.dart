import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Mybookmark Group Code

class MybookmarkGroup {
  static String getBaseUrl() => 'https://al-quran.indata.id/api/';
  static Map<String, String> headers = {};
  static MybookmarkCall mybookmarkCall = MybookmarkCall();
  static MybookmarkCopyCall mybookmarkCopyCall = MybookmarkCopyCall();
  static DeletemybookmarkCall deletemybookmarkCall = DeletemybookmarkCall();
}

class MybookmarkCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
  }) async {
    final baseUrl = MybookmarkGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mybookmark',
      apiUrl: '${baseUrl}mybookmark/${iduser}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? iduser(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].iduser''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idsurat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ayatterahir(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].numberayat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaarab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_ar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? jumlahAyat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? nomersurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_surah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class MybookmarkCopyCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
  }) async {
    final baseUrl = MybookmarkGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mybookmark Copy',
      apiUrl: '${baseUrl}mybookmarkfirst/${iduser}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? iduser(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].iduser''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idsurat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ayatterahir(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].numberayat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaarab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_ar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? jumlahAyat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? nomersurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_surah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? idbookmark(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].idbookmark''',
      ));
}

class DeletemybookmarkCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = MybookmarkGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletemybookmark',
      apiUrl: '${baseUrl}deletemybookmark/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? iduser(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].iduser''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idsurat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ayatterahir(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].numberayat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaarab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_ar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? jumlahAyat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? nomersurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_surah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End Mybookmark Group Code

/// Start Doadoa Group Code

class DoadoaGroup {
  static String getBaseUrl() => 'https://al-quran.indata.id/api/';
  static Map<String, String> headers = {};
  static GetDoaCall getDoaCall = GetDoaCall();
  static GetDoaByKategoriCall getDoaByKategoriCall = GetDoaByKategoriCall();
  static GetDoasatuCall getDoasatuCall = GetDoasatuCall();
  static GetDoaduaCall getDoaduaCall = GetDoaduaCall();
  static GetDoatigaCall getDoatigaCall = GetDoatigaCall();
  static GetDoaempatCall getDoaempatCall = GetDoaempatCall();
  static GetDoalimaCall getDoalimaCall = GetDoalimaCall();
  static GetDoaenamCall getDoaenamCall = GetDoaenamCall();
  static GetDoatujuCall getDoatujuCall = GetDoatujuCall();
  static GetDoadelapanCall getDoadelapanCall = GetDoadelapanCall();
  static GetDoasembilanCall getDoasembilanCall = GetDoasembilanCall();
  static GetDoasepuluhCall getDoasepuluhCall = GetDoasepuluhCall();
  static GetDoasebelasCall getDoasebelasCall = GetDoasebelasCall();
  static KategoriDoaCall kategoriDoaCall = KategoriDoaCall();
  static TambahdoaCall tambahdoaCall = TambahdoaCall();
  static EditDoaCall editDoaCall = EditDoaCall();
  static DeleteDoaCall deleteDoaCall = DeleteDoaCall();
  static GetdoasearchbykategoriCall getdoasearchbykategoriCall =
      GetdoasearchbykategoriCall();
  static GetdoasearchCall getdoasearchCall = GetdoasearchCall();
}

class GetDoaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoa',
      apiUrl: '${baseUrl}getdoa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoaByKategoriCall {
  Future<ApiCallResponse> call({
    int? idkategori,
  }) async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoaByKategori',
      apiUrl: '${baseUrl}getdoaBykategori/${idkategori}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoasatuCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoasatu',
      apiUrl: '${baseUrl}getdoa1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoaduaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoadua',
      apiUrl: '${baseUrl}getdoa2',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoatigaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoatiga',
      apiUrl: '${baseUrl}getdoa3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoaempatCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoaempat',
      apiUrl: '${baseUrl}getdoa4',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoalimaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoalima',
      apiUrl: '${baseUrl}getdoa5',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoaenamCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoaenam',
      apiUrl: '${baseUrl}getdoa6',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoatujuCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoatuju',
      apiUrl: '${baseUrl}getdoa7',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoadelapanCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoadelapan',
      apiUrl: '${baseUrl}getdoa8',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoasembilanCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoasembilan',
      apiUrl: '${baseUrl}getdoa9',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoasepuluhCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoasepuluh',
      apiUrl: '${baseUrl}getdoa10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDoasebelasCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getDoasebelas',
      apiUrl: '${baseUrl}getdoa11',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? judulDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].terjemahan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hadis(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].hadis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idkategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idDoa(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].IdDoa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class KategoriDoaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'KategoriDoa',
      apiUrl: '${baseUrl}getkategori',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? idaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TambahdoaCall {
  Future<ApiCallResponse> call({
    String? hadis = '',
    String? idkategori = '',
    String? namaDoa = '',
    String? arab = '',
    String? latin = '',
    String? terjemahan = '',
  }) async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Tambahdoa',
      apiUrl: '${baseUrl}tambahdoa',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idkategori': idkategori,
        'namaDoa': namaDoa,
        'arab': arab,
        'latin': latin,
        'terjemahan': terjemahan,
        'hadis': hadis,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditDoaCall {
  Future<ApiCallResponse> call({
    String? hadis = '',
    String? idkategori = '',
    String? namaDoa = '',
    String? arab = '',
    String? latin = '',
    String? terjemahan = '',
    String? id = '',
  }) async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'EditDoa',
      apiUrl: '${baseUrl}editdoa',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idkategori': idkategori,
        'namaDoa': namaDoa,
        'arab': arab,
        'latin': latin,
        'terjemahan': terjemahan,
        'hadis': hadis,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDoaCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteDoa',
      apiUrl: '${baseUrl}deletedoa',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetdoasearchbykategoriCall {
  Future<ApiCallResponse> call({
    String? keyword = 'noSearch',
    String? idkategori = '',
  }) async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getdoasearchbykategori',
      apiUrl: '${baseUrl}getdoasearchbykategori/${keyword}/${idkategori}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? doaItem(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetdoasearchCall {
  Future<ApiCallResponse> call({
    String? keyword = 'noSearch',
  }) async {
    final baseUrl = DoadoaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getdoasearch',
      apiUrl: '${baseUrl}getdoasearch/${keyword}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? doaItem(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

/// End Doadoa Group Code

/// Start Sunah Group Code

class SunahGroup {
  static String getBaseUrl() => 'https://al-quran.indata.id/api/';
  static Map<String, String> headers = {};
  static GetsunahCall getsunahCall = GetsunahCall();
  static GetsunahforadminCall getsunahforadminCall = GetsunahforadminCall();
  static KategorisunahCall kategorisunahCall = KategorisunahCall();
  static TambahfadilahCall tambahfadilahCall = TambahfadilahCall();
  static TambahsunahCall tambahsunahCall = TambahsunahCall();
  static EditfadilahCall editfadilahCall = EditfadilahCall();
  static DeletefadilaCall deletefadilaCall = DeletefadilaCall();
  static GetsunahlimaCall getsunahlimaCall = GetsunahlimaCall();
  static GetsunahenamCall getsunahenamCall = GetsunahenamCall();
  static GetsunahempatCall getsunahempatCall = GetsunahempatCall();
  static GetsunahtigaCall getsunahtigaCall = GetsunahtigaCall();
  static GetsunahtujuhCall getsunahtujuhCall = GetsunahtujuhCall();
  static GetsunahdelapanCall getsunahdelapanCall = GetsunahdelapanCall();
  static GetsunahsembilanCall getsunahsembilanCall = GetsunahsembilanCall();
  static GetsunahsepuluhCall getsunahsepuluhCall = GetsunahsepuluhCall();
  static GetsunahsebelasCall getsunahsebelasCall = GetsunahsebelasCall();
  static FadilahbysunahCall fadilahbysunahCall = FadilahbysunahCall();
  static TambahSummaryCall tambahSummaryCall = TambahSummaryCall();
  static GetmysummaryCall getmysummaryCall = GetmysummaryCall();
  static GetsunahtigabaruCall getsunahtigabaruCall = GetsunahtigabaruCall();
  static DeleteMysunnahCall deleteMysunnahCall = DeleteMysunnahCall();
  static DeletesunnahCall deletesunnahCall = DeletesunnahCall();
  static CoountsunahCall coountsunahCall = CoountsunahCall();
}

class GetsunahCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunah',
      apiUrl: '${baseUrl}getsunah',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? kategori(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
      ));
}

class GetsunahforadminCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahforadmin',
      apiUrl: '${baseUrl}getsunahadmin',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class KategorisunahCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'kategorisunah',
      apiUrl: '${baseUrl}getkategorisunah',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namaKategori(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nama_kategori''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TambahfadilahCall {
  Future<ApiCallResponse> call({
    String? idsunah = '',
    String? fadilah = '',
    String? penjelasan = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tambahfadilah',
      apiUrl: '${baseUrl}tambahfadilah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idsunah': idsunah,
        'fadilah': fadilah,
        'penjelasan': penjelasan,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TambahsunahCall {
  Future<ApiCallResponse> call({
    String? idkategorisunah = '',
    String? namaSunah = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tambahsunah',
      apiUrl: '${baseUrl}tambahsunah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idkategorisunah': idkategorisunah,
        'namaSunah': namaSunah,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditfadilahCall {
  Future<ApiCallResponse> call({
    String? penjelasan = '',
    String? fadilah = '',
    String? id = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'editfadilah',
      apiUrl: '${baseUrl}editfadilah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'fadilah': fadilah,
        'id': id,
        'penjelasan': penjelasan,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletefadilaCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletefadila',
      apiUrl: '${baseUrl}deletefadilah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetsunahlimaCall {
  Future<ApiCallResponse> call({
    String? tanggal = '',
    String? iduser = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahlima',
      apiUrl: '${baseUrl}getsunah5',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class GetsunahenamCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahenam',
      apiUrl: '${baseUrl}getsunah6',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class GetsunahempatCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahempat',
      apiUrl: '${baseUrl}getsunah4',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class GetsunahtigaCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahtiga',
      apiUrl: '${baseUrl}getsunah3',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetsunahtujuhCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahtujuh',
      apiUrl: '${baseUrl}getsunah7',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class GetsunahdelapanCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahdelapan',
      apiUrl: '${baseUrl}getsunah8',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? summaryId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].summaryId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetsunahsembilanCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahsembilan',
      apiUrl: '${baseUrl}getsunah9',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class GetsunahsepuluhCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahsepuluh',
      apiUrl: '${baseUrl}getsunah10',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class GetsunahsebelasCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahsebelas',
      apiUrl: '${baseUrl}getsunah11',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idkategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idkategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namasunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? summaryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].summaryId''',
      ));
}

class FadilahbysunahCall {
  Future<ApiCallResponse> call({
    int? idsunah,
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'fadilahbysunah',
      apiUrl: '${baseUrl}getfadilahbysunah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idsunah': idsunah,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? fadilah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].fadilah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? penjelasan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].penjelasan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TambahSummaryCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? idsunah = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tambahSummary',
      apiUrl: '${baseUrl}tambahsumarysunah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'idsunah': idsunah,
        'status': 1,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetmysummaryCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getmysummary',
      apiUrl: '${baseUrl}getsumarysunah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idsunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idsunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namaSunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? kategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].kategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tanggal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].tanggal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetsunahtigabaruCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? tanggal = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getsunahtigabaru',
      apiUrl: '${baseUrl}getsunah3',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'tanggal': tanggal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idsunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].idsunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? namaSunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].namaSunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? kategorisunah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].kategorisunah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tanggal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].tanggal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? isComplate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isCompleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? summaryId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].summaryId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class DeleteMysunnahCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteMysunnah',
      apiUrl: '${baseUrl}deletemysunah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class DeletesunnahCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletesunnah',
      apiUrl: '${baseUrl}deletesunah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class CoountsunahCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SunahGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'coountsunah',
      apiUrl: '${baseUrl}/countsunah',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? data(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data''',
      ));
}

/// End Sunah Group Code

/// Start HelpandSupport Group Code

class HelpandSupportGroup {
  static String getBaseUrl() => 'https://al-quran.indata.id/api';
  static Map<String, String> headers = {};
  static TambahhelpsuportCall tambahhelpsuportCall = TambahhelpsuportCall();
  static DeletehelpsuportCall deletehelpsuportCall = DeletehelpsuportCall();
  static GethelpCall gethelpCall = GethelpCall();
}

class TambahhelpsuportCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
    String? help = '',
    String? namauser = '',
  }) async {
    final baseUrl = HelpandSupportGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tambahhelpsuport',
      apiUrl: '${baseUrl}/tambahhelp',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'help': help,
        'namauser': namauser,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletehelpsuportCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = HelpandSupportGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletehelpsuport',
      apiUrl: '${baseUrl}/deletehelp',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GethelpCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = HelpandSupportGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'gethelp',
      apiUrl: '${baseUrl}/gethelp',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? iduser(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].iduser''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? namauser(dynamic response) => getJsonField(
        response,
        r'''$.data[:].namauser''',
        true,
      ) as List?;
  List<String>? help(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].help''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End HelpandSupport Group Code

class DaftarSuratCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'DaftarSurat',
      apiUrl: 'https://api.dikiotang.com/quran/surah',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? translationid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].translation_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tranlationen(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].translation_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? revelationid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].revelation_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? audio(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].audio_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nama(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? namaarab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_long''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nomorsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jumlahsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_verses''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? sequence(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].sequence''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? namaeng(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_en''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? datanya(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class IsisuratalquranCall {
  static Future<ApiCallResponse> call({
    String? nomorSurat = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'isisuratalquran',
      apiUrl: 'https://api.dikiotang.com/quran/ayah/surah/${nomorSurat}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? arab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].arab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? asbab(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].asbab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? audio(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nomerayat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? juz(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].juz''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? latin(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? text(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? surah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].surah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? datanya(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ProduckCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'produck',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? caregory(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BacaayatMulaidariCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'bacaayatMulaidari',
      apiUrl: 'https://api.alquran.cloud/v1/surah/1?offset=1&limit=300',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NewSurahCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'newSurah',
      apiUrl: 'https://api.alquran.cloud/v1/surah',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? nomor(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? namaarap(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? namaengris(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].englishName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? jumlahayat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].numberOfAyahs''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? asal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].revelationType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class NewDaftarSuratCall {
  static Future<ApiCallResponse> call({
    String? keyword = 'noSearch',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'newDaftarSurat',
      apiUrl: 'https://al-quran.indata.id/api/surates/${keyword}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? namaarap(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_ar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? jumlahayat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? nomorsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_of_surah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? place(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].place''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? audio(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class NewDaftarSuratCopyCall {
  static Future<ApiCallResponse> call({
    String? keyword = 'noSearch',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'newDaftarSurat Copy',
      apiUrl: 'https://al-quran.indata.id/api/surates/${keyword}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].name''',
      ));
  static String? namaarap(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].name_ar''',
      ));
  static int? jumlahayat(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].number_of_ayah''',
      ));
  static int? nomorsurat(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].number_of_surah''',
      ));
  static String? place(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].place''',
      ));
  static String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].type''',
      ));
  static String? audio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].audio''',
      ));
}

class AddBookmarkCall {
  static Future<ApiCallResponse> call({
    String? iduser = '0',
    int? idsurat = 0,
    String? numberayat = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addBookmark',
      apiUrl: 'https://al-quran.indata.id/api/bookmark',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'idsurat': idsurat,
        'numberayat': numberayat,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateBookmarkCall {
  static Future<ApiCallResponse> call({
    String? numberayat = '0',
    String? id = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateBookmark',
      apiUrl: 'https://al-quran.indata.id/api/updatebookmark',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'numberayat': numberayat,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LanjutayatCall {
  static Future<ApiCallResponse> call({
    String? idsurat = '',
    String? ayatterahir = '',
    String? string = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'lanjutayat',
      apiUrl: 'https://al-quran.indata.id/api/lanjutayat',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idsurat': idsurat,
        'ayatterahir': ayatterahir,
        'string': string,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? numberAyat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? ayat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idsurat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].surat_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ConvertMasehiKeHijriCall {
  static Future<ApiCallResponse> call({
    String? date = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'convertMasehiKeHijri',
      apiUrl: 'http://api.aladhan.com/v1/gToH/${date}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? tanggal(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hijri.day''',
      ));
  static String? bulan(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hijri.month.en''',
      ));
  static String? tahun(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hijri.year''',
      ));
}

class ConvertMasehiKeHijriCopyCall {
  static Future<ApiCallResponse> call({
    String? date = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'convertMasehiKeHijri Copy',
      apiUrl: 'http://api.aladhan.com/v1/gToH/${date}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? tanggal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hijri.day''',
      ));
  static String? bulan(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hijri.month.en''',
      ));
  static int? tahun(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hijri.year''',
      ));
}

class JadwalSholatCall {
  static Future<ApiCallResponse> call({
    int? year,
    int? month,
    String? city = '',
    String? country = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'jadwalSholat',
      apiUrl: 'http://api.aladhan.com/v1/calendarByCity/${year}/${month}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'city': city,
        'country': country,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? subuh(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].timings.Fajr''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? terbit(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].timings.Sunrise''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dzuhur(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].timings.Dhuhr''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ashar(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].timings.Asr''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? maghrib(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].timings.Maghrib''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? isya(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].timings.Isha''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tanggal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].date.gregorian.date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dataFull(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class PostRateCommandCall {
  static Future<ApiCallResponse> call({
    String? iduser = '',
    String? command = '',
    String? rate = '',
    String? ulasan = '',
    String? nama = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PostRateCommand',
      apiUrl: 'https://al-quran.indata.id/api/tambahcommand',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'command': command,
        'rate': rate,
        'ulasan': ulasan,
        'nama': nama,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCommandCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteCommand',
      apiUrl: 'https://al-quran.indata.id/api/deletecommand',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCommandRateCall {
  static Future<ApiCallResponse> call({
    String? iduser = '',
    String? command = '',
    String? rate = '',
    String? ulasan = '',
    String? nama = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCommandRate',
      apiUrl: 'https://al-quran.indata.id/api/getcommand',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class TestingcariJsonCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testingcariJson',
      apiUrl: 'https://dummyjson.com/products/search?q=${search}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? producData(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class SubscribtionCall {
  static Future<ApiCallResponse> call({
    String? iduser = '',
    String? nama = '',
    String? email = '',
    int? grandTotal,
    String? qty = '',
    String? hp = '',
    String? itemName = '',
    int? price,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'subscribtion',
      apiUrl: 'https://al-quran.indata.id/api/createInvoice2',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'nama': nama,
        'email': email,
        'grand_total': grandTotal,
        'qty': qty,
        'hp': hp,
        'item_name': itemName,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? invoice(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class CreateinvoiceCall {
  static Future<ApiCallResponse> call({
    String? iduser = '',
    String? itemName = '',
    String? qty = '',
    String? price = '',
    String? grandTotal = '',
    String? nama = '',
    String? email = '',
    String? hp = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createinvoice',
      apiUrl: 'https://al-quran.indata.id/api/createInvoice2',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
        'item_name': itemName,
        'qty': qty,
        'price': price,
        'grand_total': grandTotal,
        'nama': nama,
        'email': email,
        'hp': hp,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? invoice(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class MyexpiredCall {
  static Future<ApiCallResponse> call({
    String? iduser = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'myexpired',
      apiUrl: 'https://al-quran.indata.id/api/getmyexpiredsubscrib',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? statusPremium(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status_premium''',
      ));
  static String? colorThemes(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.colorThemes''',
      ));
}

class MypurcasehistoryCall {
  static Future<ApiCallResponse> call({
    String? iduser = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'mypurcasehistory',
      apiUrl: 'https://al-quran.indata.id/api/purcasehistory',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class DetaiSurahCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? string = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'detaiSurah',
      apiUrl: 'https://al-quran.indata.id/api/isisurah',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idsurat': id,
        'string': string,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? nomorayat(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? ayah(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].ayah''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? suratid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].surat_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? terjemahan(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class KiblatCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? long,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'kiblat',
      apiUrl: 'http://api.aladhan.com/v1/qibla/${lat}/${long}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? qiblaDirection(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.direction''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
