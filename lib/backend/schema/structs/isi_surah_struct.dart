// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IsiSurahStruct extends FFFirebaseStruct {
  IsiSurahStruct({
    int? id,
    int? number,
    String? ayah,
    String? translationEn,
    int? suratId,
    String? createdAt,
    String? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _number = number,
        _ayah = ayah,
        _translationEn = translationEn,
        _suratId = suratId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "ayah" field.
  String? _ayah;
  String get ayah => _ayah ?? '';
  set ayah(String? val) => _ayah = val;

  bool hasAyah() => _ayah != null;

  // "translation_en" field.
  String? _translationEn;
  String get translationEn => _translationEn ?? '';
  set translationEn(String? val) => _translationEn = val;

  bool hasTranslationEn() => _translationEn != null;

  // "surat_id" field.
  int? _suratId;
  int get suratId => _suratId ?? 0;
  set suratId(int? val) => _suratId = val;

  void incrementSuratId(int amount) => suratId = suratId + amount;

  bool hasSuratId() => _suratId != null;

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

  static IsiSurahStruct fromMap(Map<String, dynamic> data) => IsiSurahStruct(
        id: castToType<int>(data['id']),
        number: castToType<int>(data['number']),
        ayah: data['ayah'] as String?,
        translationEn: data['translation_en'] as String?,
        suratId: castToType<int>(data['surat_id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static IsiSurahStruct? maybeFromMap(dynamic data) =>
      data is Map ? IsiSurahStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'number': _number,
        'ayah': _ayah,
        'translation_en': _translationEn,
        'surat_id': _suratId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'ayah': serializeParam(
          _ayah,
          ParamType.String,
        ),
        'translation_en': serializeParam(
          _translationEn,
          ParamType.String,
        ),
        'surat_id': serializeParam(
          _suratId,
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

  static IsiSurahStruct fromSerializableMap(Map<String, dynamic> data) =>
      IsiSurahStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        ayah: deserializeParam(
          data['ayah'],
          ParamType.String,
          false,
        ),
        translationEn: deserializeParam(
          data['translation_en'],
          ParamType.String,
          false,
        ),
        suratId: deserializeParam(
          data['surat_id'],
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
  String toString() => 'IsiSurahStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IsiSurahStruct &&
        id == other.id &&
        number == other.number &&
        ayah == other.ayah &&
        translationEn == other.translationEn &&
        suratId == other.suratId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, number, ayah, translationEn, suratId, createdAt, updatedAt]);
}

IsiSurahStruct createIsiSurahStruct({
  int? id,
  int? number,
  String? ayah,
  String? translationEn,
  int? suratId,
  String? createdAt,
  String? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IsiSurahStruct(
      id: id,
      number: number,
      ayah: ayah,
      translationEn: translationEn,
      suratId: suratId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IsiSurahStruct? updateIsiSurahStruct(
  IsiSurahStruct? isiSurah, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    isiSurah
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIsiSurahStructData(
  Map<String, dynamic> firestoreData,
  IsiSurahStruct? isiSurah,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (isiSurah == null) {
    return;
  }
  if (isiSurah.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && isiSurah.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final isiSurahData = getIsiSurahFirestoreData(isiSurah, forFieldValue);
  final nestedData = isiSurahData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = isiSurah.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIsiSurahFirestoreData(
  IsiSurahStruct? isiSurah, [
  bool forFieldValue = false,
]) {
  if (isiSurah == null) {
    return {};
  }
  final firestoreData = mapToFirestore(isiSurah.toMap());

  // Add any Firestore field values
  isiSurah.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIsiSurahListFirestoreData(
  List<IsiSurahStruct>? isiSurahs,
) =>
    isiSurahs?.map((e) => getIsiSurahFirestoreData(e, true)).toList() ?? [];
