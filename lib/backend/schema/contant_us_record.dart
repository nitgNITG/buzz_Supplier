import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContantUsRecord extends FirestoreRecord {
  ContantUsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Coment" field.
  String? _coment;
  String get coment => _coment ?? '';
  bool hasComent() => _coment != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _email = snapshotData['Email'] as String?;
    _coment = snapshotData['Coment'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _subject = snapshotData['Subject'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ContantUs');

  static Stream<ContantUsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContantUsRecord.fromSnapshot(s));

  static Future<ContantUsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContantUsRecord.fromSnapshot(s));

  static ContantUsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContantUsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContantUsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContantUsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContantUsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContantUsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContantUsRecordData({
  String? name,
  String? email,
  String? coment,
  DateTime? time,
  String? subject,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Email': email,
      'Coment': coment,
      'Time': time,
      'Subject': subject,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContantUsRecordDocumentEquality implements Equality<ContantUsRecord> {
  const ContantUsRecordDocumentEquality();

  @override
  bool equals(ContantUsRecord? e1, ContantUsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.coment == e2?.coment &&
        e1?.time == e2?.time &&
        e1?.subject == e2?.subject;
  }

  @override
  int hash(ContantUsRecord? e) => const ListEquality()
      .hash([e?.name, e?.email, e?.coment, e?.time, e?.subject]);

  @override
  bool isValidKey(Object? o) => o is ContantUsRecord;
}
