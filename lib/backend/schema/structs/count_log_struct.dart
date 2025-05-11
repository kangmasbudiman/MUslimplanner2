// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CountLogStruct extends FFFirebaseStruct {
  CountLogStruct({
    int? alQuran,
    int? doaDoa,
    int? sholat,
    int? sunah,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _alQuran = alQuran,
        _doaDoa = doaDoa,
        _sholat = sholat,
        _sunah = sunah,
        super(firestoreUtilData);

  // "Al-quran" field.
  int? _alQuran;
  int get alQuran => _alQuran ?? 0;
  set alQuran(int? val) => _alQuran = val;

  void incrementAlQuran(int amount) => alQuran = alQuran + amount;

  bool hasAlQuran() => _alQuran != null;

  // "Doa-Doa" field.
  int? _doaDoa;
  int get doaDoa => _doaDoa ?? 0;
  set doaDoa(int? val) => _doaDoa = val;

  void incrementDoaDoa(int amount) => doaDoa = doaDoa + amount;

  bool hasDoaDoa() => _doaDoa != null;

  // "Sholat" field.
  int? _sholat;
  int get sholat => _sholat ?? 0;
  set sholat(int? val) => _sholat = val;

  void incrementSholat(int amount) => sholat = sholat + amount;

  bool hasSholat() => _sholat != null;

  // "Sunah" field.
  int? _sunah;
  int get sunah => _sunah ?? 0;
  set sunah(int? val) => _sunah = val;

  void incrementSunah(int amount) => sunah = sunah + amount;

  bool hasSunah() => _sunah != null;

  static CountLogStruct fromMap(Map<String, dynamic> data) => CountLogStruct(
        alQuran: castToType<int>(data['Al-quran']),
        doaDoa: castToType<int>(data['Doa-Doa']),
        sholat: castToType<int>(data['Sholat']),
        sunah: castToType<int>(data['Sunah']),
      );

  static CountLogStruct? maybeFromMap(dynamic data) =>
      data is Map ? CountLogStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Al-quran': _alQuran,
        'Doa-Doa': _doaDoa,
        'Sholat': _sholat,
        'Sunah': _sunah,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Al-quran': serializeParam(
          _alQuran,
          ParamType.int,
        ),
        'Doa-Doa': serializeParam(
          _doaDoa,
          ParamType.int,
        ),
        'Sholat': serializeParam(
          _sholat,
          ParamType.int,
        ),
        'Sunah': serializeParam(
          _sunah,
          ParamType.int,
        ),
      }.withoutNulls;

  static CountLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountLogStruct(
        alQuran: deserializeParam(
          data['Al-quran'],
          ParamType.int,
          false,
        ),
        doaDoa: deserializeParam(
          data['Doa-Doa'],
          ParamType.int,
          false,
        ),
        sholat: deserializeParam(
          data['Sholat'],
          ParamType.int,
          false,
        ),
        sunah: deserializeParam(
          data['Sunah'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CountLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountLogStruct &&
        alQuran == other.alQuran &&
        doaDoa == other.doaDoa &&
        sholat == other.sholat &&
        sunah == other.sunah;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([alQuran, doaDoa, sholat, sunah]);
}

CountLogStruct createCountLogStruct({
  int? alQuran,
  int? doaDoa,
  int? sholat,
  int? sunah,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountLogStruct(
      alQuran: alQuran,
      doaDoa: doaDoa,
      sholat: sholat,
      sunah: sunah,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CountLogStruct? updateCountLogStruct(
  CountLogStruct? countLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    countLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCountLogStructData(
  Map<String, dynamic> firestoreData,
  CountLogStruct? countLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (countLog == null) {
    return;
  }
  if (countLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && countLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countLogData = getCountLogFirestoreData(countLog, forFieldValue);
  final nestedData = countLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = countLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCountLogFirestoreData(
  CountLogStruct? countLog, [
  bool forFieldValue = false,
]) {
  if (countLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(countLog.toMap());

  // Add any Firestore field values
  countLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountLogListFirestoreData(
  List<CountLogStruct>? countLogs,
) =>
    countLogs?.map((e) => getCountLogFirestoreData(e, true)).toList() ?? [];
