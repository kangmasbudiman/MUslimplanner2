// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GetsunahForadminStruct extends FFFirebaseStruct {
  GetsunahForadminStruct({
    int? id,
    int? idkategorisunah,
    String? namaSunah,
    String? createdAt,
    String? updatedAt,
    String? namaKategori,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _idkategorisunah = idkategorisunah,
        _namaSunah = namaSunah,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _namaKategori = namaKategori,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "idkategorisunah" field.
  int? _idkategorisunah;
  int get idkategorisunah => _idkategorisunah ?? 0;
  set idkategorisunah(int? val) => _idkategorisunah = val;

  void incrementIdkategorisunah(int amount) =>
      idkategorisunah = idkategorisunah + amount;

  bool hasIdkategorisunah() => _idkategorisunah != null;

  // "namaSunah" field.
  String? _namaSunah;
  String get namaSunah => _namaSunah ?? '';
  set namaSunah(String? val) => _namaSunah = val;

  bool hasNamaSunah() => _namaSunah != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "nama_kategori" field.
  String? _namaKategori;
  String get namaKategori => _namaKategori ?? '';
  set namaKategori(String? val) => _namaKategori = val;

  bool hasNamaKategori() => _namaKategori != null;

  static GetsunahForadminStruct fromMap(Map<String, dynamic> data) =>
      GetsunahForadminStruct(
        id: castToType<int>(data['id']),
        idkategorisunah: castToType<int>(data['idkategorisunah']),
        namaSunah: data['namaSunah'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        namaKategori: data['nama_kategori'] as String?,
      );

  static GetsunahForadminStruct? maybeFromMap(dynamic data) => data is Map
      ? GetsunahForadminStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idkategorisunah': _idkategorisunah,
        'namaSunah': _namaSunah,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'nama_kategori': _namaKategori,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'idkategorisunah': serializeParam(
          _idkategorisunah,
          ParamType.int,
        ),
        'namaSunah': serializeParam(
          _namaSunah,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'nama_kategori': serializeParam(
          _namaKategori,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetsunahForadminStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetsunahForadminStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idkategorisunah: deserializeParam(
          data['idkategorisunah'],
          ParamType.int,
          false,
        ),
        namaSunah: deserializeParam(
          data['namaSunah'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        namaKategori: deserializeParam(
          data['nama_kategori'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetsunahForadminStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetsunahForadminStruct &&
        id == other.id &&
        idkategorisunah == other.idkategorisunah &&
        namaSunah == other.namaSunah &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        namaKategori == other.namaKategori;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, idkategorisunah, namaSunah, createdAt, updatedAt, namaKategori]);
}

GetsunahForadminStruct createGetsunahForadminStruct({
  int? id,
  int? idkategorisunah,
  String? namaSunah,
  String? createdAt,
  String? updatedAt,
  String? namaKategori,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetsunahForadminStruct(
      id: id,
      idkategorisunah: idkategorisunah,
      namaSunah: namaSunah,
      createdAt: createdAt,
      updatedAt: updatedAt,
      namaKategori: namaKategori,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetsunahForadminStruct? updateGetsunahForadminStruct(
  GetsunahForadminStruct? getsunahForadmin, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getsunahForadmin
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetsunahForadminStructData(
  Map<String, dynamic> firestoreData,
  GetsunahForadminStruct? getsunahForadmin,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getsunahForadmin == null) {
    return;
  }
  if (getsunahForadmin.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && getsunahForadmin.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getsunahForadminData =
      getGetsunahForadminFirestoreData(getsunahForadmin, forFieldValue);
  final nestedData =
      getsunahForadminData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = getsunahForadmin.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetsunahForadminFirestoreData(
  GetsunahForadminStruct? getsunahForadmin, [
  bool forFieldValue = false,
]) {
  if (getsunahForadmin == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getsunahForadmin.toMap());

  // Add any Firestore field values
  getsunahForadmin.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetsunahForadminListFirestoreData(
  List<GetsunahForadminStruct>? getsunahForadmins,
) =>
    getsunahForadmins
        ?.map((e) => getGetsunahForadminFirestoreData(e, true))
        .toList() ??
    [];
