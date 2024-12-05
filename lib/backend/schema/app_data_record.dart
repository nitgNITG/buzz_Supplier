import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppDataRecord extends FirestoreRecord {
  AppDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "About" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Missin" field.
  String? _missin;
  String get missin => _missin ?? '';
  bool hasMissin() => _missin != null;

  // "MissinAr" field.
  String? _missinAr;
  String get missinAr => _missinAr ?? '';
  bool hasMissinAr() => _missinAr != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "Terms" field.
  String? _terms;
  String get terms => _terms ?? '';
  bool hasTerms() => _terms != null;

  // "TermsAr" field.
  String? _termsAr;
  String get termsAr => _termsAr ?? '';
  bool hasTermsAr() => _termsAr != null;

  // "aboutAr" field.
  String? _aboutAr;
  String get aboutAr => _aboutAr ?? '';
  bool hasAboutAr() => _aboutAr != null;

  // "privacy" field.
  String? _privacy;
  String get privacy => _privacy ?? '';
  bool hasPrivacy() => _privacy != null;

  // "privacyAr" field.
  String? _privacyAr;
  String get privacyAr => _privacyAr ?? '';
  bool hasPrivacyAr() => _privacyAr != null;

  void _initializeFields() {
    _about = snapshotData['About'] as String?;
    _email = snapshotData['Email'] as String?;
    _missin = snapshotData['Missin'] as String?;
    _missinAr = snapshotData['MissinAr'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _terms = snapshotData['Terms'] as String?;
    _termsAr = snapshotData['TermsAr'] as String?;
    _aboutAr = snapshotData['aboutAr'] as String?;
    _privacy = snapshotData['privacy'] as String?;
    _privacyAr = snapshotData['privacyAr'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AppData');

  static Stream<AppDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppDataRecord.fromSnapshot(s));

  static Future<AppDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppDataRecord.fromSnapshot(s));

  static AppDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppDataRecordData({
  String? about,
  String? email,
  String? missin,
  String? missinAr,
  String? phone,
  String? terms,
  String? termsAr,
  String? aboutAr,
  String? privacy,
  String? privacyAr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'About': about,
      'Email': email,
      'Missin': missin,
      'MissinAr': missinAr,
      'Phone': phone,
      'Terms': terms,
      'TermsAr': termsAr,
      'aboutAr': aboutAr,
      'privacy': privacy,
      'privacyAr': privacyAr,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppDataRecordDocumentEquality implements Equality<AppDataRecord> {
  const AppDataRecordDocumentEquality();

  @override
  bool equals(AppDataRecord? e1, AppDataRecord? e2) {
    return e1?.about == e2?.about &&
        e1?.email == e2?.email &&
        e1?.missin == e2?.missin &&
        e1?.missinAr == e2?.missinAr &&
        e1?.phone == e2?.phone &&
        e1?.terms == e2?.terms &&
        e1?.termsAr == e2?.termsAr &&
        e1?.aboutAr == e2?.aboutAr &&
        e1?.privacy == e2?.privacy &&
        e1?.privacyAr == e2?.privacyAr;
  }

  @override
  int hash(AppDataRecord? e) => const ListEquality().hash([
        e?.about,
        e?.email,
        e?.missin,
        e?.missinAr,
        e?.phone,
        e?.terms,
        e?.termsAr,
        e?.aboutAr,
        e?.privacy,
        e?.privacyAr
      ]);

  @override
  bool isValidKey(Object? o) => o is AppDataRecord;
}
