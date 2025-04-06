// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DetaildoaStruct extends FFFirebaseStruct {
  DetaildoaStruct({
    int? id,
    int? iddoa,
    String? arab,
    String? latin,
    String? terjemahan,
    String? penjelasan,
    String? hadis,
    String? pengulanganDoa,
    String? createdAt,
    String? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _iddoa = iddoa,
        _arab = arab,
        _latin = latin,
        _terjemahan = terjemahan,
        _penjelasan = penjelasan,
        _hadis = hadis,
        _pengulanganDoa = pengulanganDoa,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "iddoa" field.
  int? _iddoa;
  int get iddoa => _iddoa ?? 0;
  set iddoa(int? val) => _iddoa = val;

  void incrementIddoa(int amount) => iddoa = iddoa + amount;

  bool hasIddoa() => _iddoa != null;

  // "arab" field.
  String? _arab;
  String get arab => _arab ?? '';
  set arab(String? val) => _arab = val;

  bool hasArab() => _arab != null;

  // "latin" field.
  String? _latin;
  String get latin => _latin ?? '';
  set latin(String? val) => _latin = val;

  bool hasLatin() => _latin != null;

  // "terjemahan" field.
  String? _terjemahan;
  String get terjemahan => _terjemahan ?? '';
  set terjemahan(String? val) => _terjemahan = val;

  bool hasTerjemahan() => _terjemahan != null;

  // "penjelasan" field.
  String? _penjelasan;
  String get penjelasan => _penjelasan ?? '';
  set penjelasan(String? val) => _penjelasan = val;

  bool hasPenjelasan() => _penjelasan != null;

  // "hadis" field.
  String? _hadis;
  String get hadis => _hadis ?? '';
  set hadis(String? val) => _hadis = val;

  bool hasHadis() => _hadis != null;

  // "pengulanganDoa" field.
  String? _pengulanganDoa;
  String get pengulanganDoa => _pengulanganDoa ?? '';
  set pengulanganDoa(String? val) => _pengulanganDoa = val;

  bool hasPengulanganDoa() => _pengulanganDoa != null;

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

  static DetaildoaStruct fromMap(Map<String, dynamic> data) => DetaildoaStruct(
        id: castToType<int>(data['id']),
        iddoa: castToType<int>(data['iddoa']),
        arab: data['arab'] as String?,
        latin: data['latin'] as String?,
        terjemahan: data['terjemahan'] as String?,
        penjelasan: data['penjelasan'] as String?,
        hadis: data['hadis'] as String?,
        pengulanganDoa: data['pengulanganDoa'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static DetaildoaStruct? maybeFromMap(dynamic data) => data is Map
      ? DetaildoaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'iddoa': _iddoa,
        'arab': _arab,
        'latin': _latin,
        'terjemahan': _terjemahan,
        'penjelasan': _penjelasan,
        'hadis': _hadis,
        'pengulanganDoa': _pengulanganDoa,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'iddoa': serializeParam(
          _iddoa,
          ParamType.int,
        ),
        'arab': serializeParam(
          _arab,
          ParamType.String,
        ),
        'latin': serializeParam(
          _latin,
          ParamType.String,
        ),
        'terjemahan': serializeParam(
          _terjemahan,
          ParamType.String,
        ),
        'penjelasan': serializeParam(
          _penjelasan,
          ParamType.String,
        ),
        'hadis': serializeParam(
          _hadis,
          ParamType.String,
        ),
        'pengulanganDoa': serializeParam(
          _pengulanganDoa,
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
      }.withoutNulls;

  static DetaildoaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetaildoaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        iddoa: deserializeParam(
          data['iddoa'],
          ParamType.int,
          false,
        ),
        arab: deserializeParam(
          data['arab'],
          ParamType.String,
          false,
        ),
        latin: deserializeParam(
          data['latin'],
          ParamType.String,
          false,
        ),
        terjemahan: deserializeParam(
          data['terjemahan'],
          ParamType.String,
          false,
        ),
        penjelasan: deserializeParam(
          data['penjelasan'],
          ParamType.String,
          false,
        ),
        hadis: deserializeParam(
          data['hadis'],
          ParamType.String,
          false,
        ),
        pengulanganDoa: deserializeParam(
          data['pengulanganDoa'],
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
      );

  @override
  String toString() => 'DetaildoaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetaildoaStruct &&
        id == other.id &&
        iddoa == other.iddoa &&
        arab == other.arab &&
        latin == other.latin &&
        terjemahan == other.terjemahan &&
        penjelasan == other.penjelasan &&
        hadis == other.hadis &&
        pengulanganDoa == other.pengulanganDoa &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        iddoa,
        arab,
        latin,
        terjemahan,
        penjelasan,
        hadis,
        pengulanganDoa,
        createdAt,
        updatedAt
      ]);
}

DetaildoaStruct createDetaildoaStruct({
  int? id,
  int? iddoa,
  String? arab,
  String? latin,
  String? terjemahan,
  String? penjelasan,
  String? hadis,
  String? pengulanganDoa,
  String? createdAt,
  String? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DetaildoaStruct(
      id: id,
      iddoa: iddoa,
      arab: arab,
      latin: latin,
      terjemahan: terjemahan,
      penjelasan: penjelasan,
      hadis: hadis,
      pengulanganDoa: pengulanganDoa,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DetaildoaStruct? updateDetaildoaStruct(
  DetaildoaStruct? detaildoa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    detaildoa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDetaildoaStructData(
  Map<String, dynamic> firestoreData,
  DetaildoaStruct? detaildoa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (detaildoa == null) {
    return;
  }
  if (detaildoa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && detaildoa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final detaildoaData = getDetaildoaFirestoreData(detaildoa, forFieldValue);
  final nestedData = detaildoaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = detaildoa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDetaildoaFirestoreData(
  DetaildoaStruct? detaildoa, [
  bool forFieldValue = false,
]) {
  if (detaildoa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(detaildoa.toMap());

  // Add any Firestore field values
  detaildoa.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDetaildoaListFirestoreData(
  List<DetaildoaStruct>? detaildoas,
) =>
    detaildoas?.map((e) => getDetaildoaFirestoreData(e, true)).toList() ?? [];
