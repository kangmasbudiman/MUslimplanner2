import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "rules" field.
  int? _rules;
  int get rules => _rules ?? 0;
  bool hasRules() => _rules != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "status_premium" field.
  int? _statusPremium;
  int get statusPremium => _statusPremium ?? 0;
  bool hasStatusPremium() => _statusPremium != null;

  // "online_status" field.
  int? _onlineStatus;
  int get onlineStatus => _onlineStatus ?? 0;
  bool hasOnlineStatus() => _onlineStatus != null;

  // "colorThemes" field.
  Color? _colorThemes;
  Color? get colorThemes => _colorThemes;
  bool hasColorThemes() => _colorThemes != null;

  // "premiumDate" field.
  DateTime? _premiumDate;
  DateTime? get premiumDate => _premiumDate;
  bool hasPremiumDate() => _premiumDate != null;

  // "last_time_active" field.
  DateTime? _lastTimeActive;
  DateTime? get lastTimeActive => _lastTimeActive;
  bool hasLastTimeActive() => _lastTimeActive != null;

  // "requestPremium" field.
  int? _requestPremium;
  int get requestPremium => _requestPremium ?? 0;
  bool hasRequestPremium() => _requestPremium != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = snapshotData['gender'] as String?;
    _rules = castToType<int>(snapshotData['rules']);
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _statusPremium = castToType<int>(snapshotData['status_premium']);
    _onlineStatus = castToType<int>(snapshotData['online_status']);
    _colorThemes = getSchemaColor(snapshotData['colorThemes']);
    _premiumDate = snapshotData['premiumDate'] as DateTime?;
    _lastTimeActive = snapshotData['last_time_active'] as DateTime?;
    _requestPremium = castToType<int>(snapshotData['requestPremium']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? gender,
  int? rules,
  String? city,
  String? country,
  int? statusPremium,
  int? onlineStatus,
  Color? colorThemes,
  DateTime? premiumDate,
  DateTime? lastTimeActive,
  int? requestPremium,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gender': gender,
      'rules': rules,
      'city': city,
      'country': country,
      'status_premium': statusPremium,
      'online_status': onlineStatus,
      'colorThemes': colorThemes,
      'premiumDate': premiumDate,
      'last_time_active': lastTimeActive,
      'requestPremium': requestPremium,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        e1?.rules == e2?.rules &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.statusPremium == e2?.statusPremium &&
        e1?.onlineStatus == e2?.onlineStatus &&
        e1?.colorThemes == e2?.colorThemes &&
        e1?.premiumDate == e2?.premiumDate &&
        e1?.lastTimeActive == e2?.lastTimeActive &&
        e1?.requestPremium == e2?.requestPremium;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gender,
        e?.rules,
        e?.city,
        e?.country,
        e?.statusPremium,
        e?.onlineStatus,
        e?.colorThemes,
        e?.premiumDate,
        e?.lastTimeActive,
        e?.requestPremium
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
