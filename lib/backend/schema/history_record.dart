import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryRecord extends FirestoreRecord {
  HistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "branch" field.
  DocumentReference? _branch;
  DocumentReference? get branch => _branch;
  bool hasBranch() => _branch != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _type = snapshotData['Type'] as String?;
    _amount = castToType<int>(snapshotData['amount']);
    _branch = snapshotData['branch'] as DocumentReference?;
    _address = snapshotData['address'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('History')
          : FirebaseFirestore.instance.collectionGroup('History');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('History').doc(id);

  static Stream<HistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryRecord.fromSnapshot(s));

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryRecord.fromSnapshot(s));

  static HistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryRecordData({
  DateTime? date,
  String? type,
  int? amount,
  DocumentReference? branch,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Type': type,
      'amount': amount,
      'branch': branch,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryRecordDocumentEquality implements Equality<HistoryRecord> {
  const HistoryRecordDocumentEquality();

  @override
  bool equals(HistoryRecord? e1, HistoryRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.type == e2?.type &&
        e1?.amount == e2?.amount &&
        e1?.branch == e2?.branch &&
        e1?.address == e2?.address;
  }

  @override
  int hash(HistoryRecord? e) => const ListEquality()
      .hash([e?.date, e?.type, e?.amount, e?.branch, e?.address]);

  @override
  bool isValidKey(Object? o) => o is HistoryRecord;
}
