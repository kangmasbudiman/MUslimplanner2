// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MysummurysunahStruct extends FFFirebaseStruct {
  MysummurysunahStruct({
    int? id,
    String? iduser,
    int? idsunah,
    String? namaSunah,
    int? idkategorisunah,
    String? kategorisunah,
    String? tanggal,
    int? status,
    String? createdAt,
    String? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _iduser = iduser,
        _idsunah = idsunah,
        _namaSunah = namaSunah,
        _idkategorisunah = idkategorisunah,
        _kategorisunah = kategorisunah,
        _tanggal = tanggal,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "iduser" field.
  String? _iduser;
  String get iduser => _iduser ?? '';
  set iduser(String? val) => _iduser = val;

  bool hasIduser() => _iduser != null;

  // "idsunah" field.
  int? _idsunah;
  int get idsunah => _idsunah ?? 0;
  set idsunah(int? val) => _idsunah = val;

  void incrementIdsunah(int amount) => idsunah = idsunah + amount;

  bool hasIdsunah() => _idsunah != null;

  // "namaSunah" field.
  String? _namaSunah;
  String get namaSunah => _namaSunah ?? '';
  set namaSunah(String? val) => _namaSunah = val;

  bool hasNamaSunah() => _namaSunah != null;

  // "idkategorisunah" field.
  int? _idkategorisunah;
  int get idkategorisunah => _idkategorisunah ?? 0;
  set idkategorisunah(int? val) => _idkategorisunah = val;

  void incrementIdkategorisunah(int amount) =>
      idkategorisunah = idkategorisunah + amount;

  bool hasIdkategorisunah() => _idkategorisunah != null;

  // "kategorisunah" field.
  String? _kategorisunah;
  String get kategorisunah => _kategorisunah ?? '';
  set kategorisunah(String? val) => _kategorisunah = val;

  bool hasKategorisunah() => _kategorisunah != null;

  // "tanggal" field.
  String? _tanggal;
  String get tanggal => _tanggal ?? '';
  set tanggal(String? val) => _tanggal = val;

  bool hasTanggal() => _tanggal != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

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

  static MysummurysunahStruct fromMap(Map<String, dynamic> data) =>
      MysummurysunahStruct(
        id: castToType<int>(data['id']),
        iduser: data['iduser'] as String?,
        idsunah: castToType<int>(data['idsunah']),
        namaSunah: data['namaSunah'] as String?,
        idkategorisunah: castToType<int>(data['idkategorisunah']),
        kategorisunah: data['kategorisunah'] as String?,
        tanggal: data['tanggal'] as String?,
        status: castToType<int>(data['status']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static MysummurysunahStruct? maybeFromMap(dynamic data) => data is Map
      ? MysummurysunahStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'iduser': _iduser,
        'idsunah': _idsunah,
        'namaSunah': _namaSunah,
        'idkategorisunah': _idkategorisunah,
        'kategorisunah': _kategorisunah,
        'tanggal': _tanggal,
        'status': _status,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'idsunah': serializeParam(
          _idsunah,
          ParamType.int,
        ),
        'namaSunah': serializeParam(
          _namaSunah,
          ParamType.String,
        ),
        'idkategorisunah': serializeParam(
          _idkategorisunah,
          ParamType.int,
        ),
        'kategorisunah': serializeParam(
          _kategorisunah,
          ParamType.String,
        ),
        'tanggal': serializeParam(
          _tanggal,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static MysummurysunahStruct fromSerializableMap(Map<String, dynamic> data) =>
      MysummurysunahStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        iduser: deserializeParam(
          data['iduser'],
          ParamType.String,
          false,
        ),
        idsunah: deserializeParam(
          data['idsunah'],
          ParamType.int,
          false,
        ),
        namaSunah: deserializeParam(
          data['namaSunah'],
          ParamType.String,
          false,
        ),
        idkategorisunah: deserializeParam(
          data['idkategorisunah'],
          ParamType.int,
          false,
        ),
        kategorisunah: deserializeParam(
          data['kategorisunah'],
          ParamType.String,
          false,
        ),
        tanggal: deserializeParam(
          data['tanggal'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
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
      );

  @override
  String toString() => 'MysummurysunahStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MysummurysunahStruct &&
        id == other.id &&
        iduser == other.iduser &&
        idsunah == other.idsunah &&
        namaSunah == other.namaSunah &&
        idkategorisunah == other.idkategorisunah &&
        kategorisunah == other.kategorisunah &&
        tanggal == other.tanggal &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        iduser,
        idsunah,
        namaSunah,
        idkategorisunah,
        kategorisunah,
        tanggal,
        status,
        createdAt,
        updatedAt
      ]);
}

MysummurysunahStruct createMysummurysunahStruct({
  int? id,
  String? iduser,
  int? idsunah,
  String? namaSunah,
  int? idkategorisunah,
  String? kategorisunah,
  String? tanggal,
  int? status,
  String? createdAt,
  String? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MysummurysunahStruct(
      id: id,
      iduser: iduser,
      idsunah: idsunah,
      namaSunah: namaSunah,
      idkategorisunah: idkategorisunah,
      kategorisunah: kategorisunah,
      tanggal: tanggal,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MysummurysunahStruct? updateMysummurysunahStruct(
  MysummurysunahStruct? mysummurysunah, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mysummurysunah
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMysummurysunahStructData(
  Map<String, dynamic> firestoreData,
  MysummurysunahStruct? mysummurysunah,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mysummurysunah == null) {
    return;
  }
  if (mysummurysunah.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mysummurysunah.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mysummurysunahData =
      getMysummurysunahFirestoreData(mysummurysunah, forFieldValue);
  final nestedData =
      mysummurysunahData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mysummurysunah.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMysummurysunahFirestoreData(
  MysummurysunahStruct? mysummurysunah, [
  bool forFieldValue = false,
]) {
  if (mysummurysunah == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mysummurysunah.toMap());

  // Add any Firestore field values
  mysummurysunah.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMysummurysunahListFirestoreData(
  List<MysummurysunahStruct>? mysummurysunahs,
) =>
    mysummurysunahs
        ?.map((e) => getMysummurysunahFirestoreData(e, true))
        .toList() ??
    [];
