import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaqRecord extends FirestoreRecord {
  FaqRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Ans" field.
  String? _ans;
  String get ans => _ans ?? '';
  bool hasAns() => _ans != null;

  // "Que" field.
  String? _que;
  String get que => _que ?? '';
  bool hasQue() => _que != null;

  void _initializeFields() {
    _ans = snapshotData['Ans'] as String?;
    _que = snapshotData['Que'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FAQ');

  static Stream<FaqRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaqRecord.fromSnapshot(s));

  static Future<FaqRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaqRecord.fromSnapshot(s));

  static FaqRecord fromSnapshot(DocumentSnapshot snapshot) => FaqRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaqRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaqRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaqRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaqRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaqRecordData({
  String? ans,
  String? que,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Ans': ans,
      'Que': que,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaqRecordDocumentEquality implements Equality<FaqRecord> {
  const FaqRecordDocumentEquality();

  @override
  bool equals(FaqRecord? e1, FaqRecord? e2) {
    return e1?.ans == e2?.ans && e1?.que == e2?.que;
  }

  @override
  int hash(FaqRecord? e) => const ListEquality().hash([e?.ans, e?.que]);

  @override
  bool isValidKey(Object? o) => o is FaqRecord;
}
