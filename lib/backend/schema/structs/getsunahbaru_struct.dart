// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GetsunahbaruStruct extends FFFirebaseStruct {
  GetsunahbaruStruct({
    int? id,
    String? namaSunah,
    String? kategori,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _namaSunah = namaSunah,
        _kategori = kategori,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nama_sunah" field.
  String? _namaSunah;
  String get namaSunah => _namaSunah ?? '';
  set namaSunah(String? val) => _namaSunah = val;

  bool hasNamaSunah() => _namaSunah != null;

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  set kategori(String? val) => _kategori = val;

  bool hasKategori() => _kategori != null;

  static GetsunahbaruStruct fromMap(Map<String, dynamic> data) =>
      GetsunahbaruStruct(
        id: castToType<int>(data['id']),
        namaSunah: data['nama_sunah'] as String?,
        kategori: data['kategori'] as String?,
      );

  static GetsunahbaruStruct? maybeFromMap(dynamic data) => data is Map
      ? GetsunahbaruStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nama_sunah': _namaSunah,
        'kategori': _kategori,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nama_sunah': serializeParam(
          _namaSunah,
          ParamType.String,
        ),
        'kategori': serializeParam(
          _kategori,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetsunahbaruStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetsunahbaruStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        namaSunah: deserializeParam(
          data['nama_sunah'],
          ParamType.String,
          false,
        ),
        kategori: deserializeParam(
          data['kategori'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetsunahbaruStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetsunahbaruStruct &&
        id == other.id &&
        namaSunah == other.namaSunah &&
        kategori == other.kategori;
  }

  @override
  int get hashCode => const ListEquality().hash([id, namaSunah, kategori]);
}

GetsunahbaruStruct createGetsunahbaruStruct({
  int? id,
  String? namaSunah,
  String? kategori,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetsunahbaruStruct(
      id: id,
      namaSunah: namaSunah,
      kategori: kategori,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetsunahbaruStruct? updateGetsunahbaruStruct(
  GetsunahbaruStruct? getsunahbaru, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getsunahbaru
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetsunahbaruStructData(
  Map<String, dynamic> firestoreData,
  GetsunahbaruStruct? getsunahbaru,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getsunahbaru == null) {
    return;
  }
  if (getsunahbaru.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && getsunahbaru.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getsunahbaruData =
      getGetsunahbaruFirestoreData(getsunahbaru, forFieldValue);
  final nestedData =
      getsunahbaruData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = getsunahbaru.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetsunahbaruFirestoreData(
  GetsunahbaruStruct? getsunahbaru, [
  bool forFieldValue = false,
]) {
  if (getsunahbaru == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getsunahbaru.toMap());

  // Add any Firestore field values
  getsunahbaru.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetsunahbaruListFirestoreData(
  List<GetsunahbaruStruct>? getsunahbarus,
) =>
    getsunahbarus?.map((e) => getGetsunahbaruFirestoreData(e, true)).toList() ??
    [];
