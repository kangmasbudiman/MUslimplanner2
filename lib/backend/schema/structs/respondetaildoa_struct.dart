// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RespondetaildoaStruct extends FFFirebaseStruct {
  RespondetaildoaStruct({
    int? id,
    int? iddoa,
    String? arab,
    String? latin,
    String? terjemahan,
    String? penjelasan,
    String? hadis,
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

  static RespondetaildoaStruct fromMap(Map<String, dynamic> data) =>
      RespondetaildoaStruct(
        id: castToType<int>(data['id']),
        iddoa: castToType<int>(data['iddoa']),
        arab: data['arab'] as String?,
        latin: data['latin'] as String?,
        terjemahan: data['terjemahan'] as String?,
        penjelasan: data['penjelasan'] as String?,
        hadis: data['hadis'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static RespondetaildoaStruct? maybeFromMap(dynamic data) => data is Map
      ? RespondetaildoaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'iddoa': _iddoa,
        'arab': _arab,
        'latin': _latin,
        'terjemahan': _terjemahan,
        'penjelasan': _penjelasan,
        'hadis': _hadis,
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
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static RespondetaildoaStruct fromSerializableMap(Map<String, dynamic> data) =>
      RespondetaildoaStruct(
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
  String toString() => 'RespondetaildoaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RespondetaildoaStruct &&
        id == other.id &&
        iddoa == other.iddoa &&
        arab == other.arab &&
        latin == other.latin &&
        terjemahan == other.terjemahan &&
        penjelasan == other.penjelasan &&
        hadis == other.hadis &&
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
        createdAt,
        updatedAt
      ]);
}

RespondetaildoaStruct createRespondetaildoaStruct({
  int? id,
  int? iddoa,
  String? arab,
  String? latin,
  String? terjemahan,
  String? penjelasan,
  String? hadis,
  String? createdAt,
  String? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RespondetaildoaStruct(
      id: id,
      iddoa: iddoa,
      arab: arab,
      latin: latin,
      terjemahan: terjemahan,
      penjelasan: penjelasan,
      hadis: hadis,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RespondetaildoaStruct? updateRespondetaildoaStruct(
  RespondetaildoaStruct? respondetaildoa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    respondetaildoa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRespondetaildoaStructData(
  Map<String, dynamic> firestoreData,
  RespondetaildoaStruct? respondetaildoa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (respondetaildoa == null) {
    return;
  }
  if (respondetaildoa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && respondetaildoa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final respondetaildoaData =
      getRespondetaildoaFirestoreData(respondetaildoa, forFieldValue);
  final nestedData =
      respondetaildoaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = respondetaildoa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRespondetaildoaFirestoreData(
  RespondetaildoaStruct? respondetaildoa, [
  bool forFieldValue = false,
]) {
  if (respondetaildoa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(respondetaildoa.toMap());

  // Add any Firestore field values
  respondetaildoa.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRespondetaildoaListFirestoreData(
  List<RespondetaildoaStruct>? respondetaildoas,
) =>
    respondetaildoas
        ?.map((e) => getRespondetaildoaFirestoreData(e, true))
        .toList() ??
    [];
