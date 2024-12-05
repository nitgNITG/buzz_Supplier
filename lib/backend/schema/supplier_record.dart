import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupplierRecord extends FirestoreRecord {
  SupplierRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Display_Name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "Photo_Url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "Created_Time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "Phone_Number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _phone = snapshotData['Phone'] as String?;
    _email = snapshotData['Email'] as String?;
    _displayName = snapshotData['Display_Name'] as String?;
    _photoUrl = snapshotData['Photo_Url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['Created_Time'] as DateTime?;
    _phoneNumber = snapshotData['Phone_Number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Supplier');

  static Stream<SupplierRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupplierRecord.fromSnapshot(s));

  static Future<SupplierRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupplierRecord.fromSnapshot(s));

  static SupplierRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupplierRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupplierRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupplierRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupplierRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupplierRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupplierRecordData({
  String? phone,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Phone': phone,
      'Email': email,
      'Display_Name': displayName,
      'Photo_Url': photoUrl,
      'uid': uid,
      'Created_Time': createdTime,
      'Phone_Number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupplierRecordDocumentEquality implements Equality<SupplierRecord> {
  const SupplierRecordDocumentEquality();

  @override
  bool equals(SupplierRecord? e1, SupplierRecord? e2) {
    return e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(SupplierRecord? e) => const ListEquality().hash([
        e?.phone,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is SupplierRecord;
}
