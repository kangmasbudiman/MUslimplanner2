// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DatasunahadminStruct extends FFFirebaseStruct {
  DatasunahadminStruct({
    int? id,
    int? idkategorisunah,
    String? namaSunah,
    String? createdAt,
    String? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _idkategorisunah = idkategorisunah,
        _namaSunah = namaSunah,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
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

  static DatasunahadminStruct fromMap(Map<String, dynamic> data) =>
      DatasunahadminStruct(
        id: castToType<int>(data['id']),
        idkategorisunah: castToType<int>(data['idkategorisunah']),
        namaSunah: data['namaSunah'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static DatasunahadminStruct? maybeFromMap(dynamic data) => data is Map
      ? DatasunahadminStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idkategorisunah': _idkategorisunah,
        'namaSunah': _namaSunah,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
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
      }.withoutNulls;

  static DatasunahadminStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatasunahadminStruct(
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
      );

  @override
  String toString() => 'DatasunahadminStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatasunahadminStruct &&
        id == other.id &&
        idkategorisunah == other.idkategorisunah &&
        namaSunah == other.namaSunah &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, idkategorisunah, namaSunah, createdAt, updatedAt]);
}

DatasunahadminStruct createDatasunahadminStruct({
  int? id,
  int? idkategorisunah,
  String? namaSunah,
  String? createdAt,
  String? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DatasunahadminStruct(
      id: id,
      idkategorisunah: idkategorisunah,
      namaSunah: namaSunah,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DatasunahadminStruct? updateDatasunahadminStruct(
  DatasunahadminStruct? datasunahadmin, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    datasunahadmin
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDatasunahadminStructData(
  Map<String, dynamic> firestoreData,
  DatasunahadminStruct? datasunahadmin,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (datasunahadmin == null) {
    return;
  }
  if (datasunahadmin.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && datasunahadmin.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final datasunahadminData =
      getDatasunahadminFirestoreData(datasunahadmin, forFieldValue);
  final nestedData =
      datasunahadminData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = datasunahadmin.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDatasunahadminFirestoreData(
  DatasunahadminStruct? datasunahadmin, [
  bool forFieldValue = false,
]) {
  if (datasunahadmin == null) {
    return {};
  }
  final firestoreData = mapToFirestore(datasunahadmin.toMap());

  // Add any Firestore field values
  datasunahadmin.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDatasunahadminListFirestoreData(
  List<DatasunahadminStruct>? datasunahadmins,
) =>
    datasunahadmins
        ?.map((e) => getDatasunahadminFirestoreData(e, true))
        .toList() ??
    [];
