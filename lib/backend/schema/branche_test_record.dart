import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BrancheTestRecord extends FirestoreRecord {
  BrancheTestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "branch" field.
  BrancheListStruct? _branch;
  BrancheListStruct get branch => _branch ?? BrancheListStruct();
  bool hasBranch() => _branch != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _branch = BrancheListStruct.maybeFromMap(snapshotData['branch']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('BrancheTest')
          : FirebaseFirestore.instance.collectionGroup('BrancheTest');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('BrancheTest').doc(id);

  static Stream<BrancheTestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BrancheTestRecord.fromSnapshot(s));

  static Future<BrancheTestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BrancheTestRecord.fromSnapshot(s));

  static BrancheTestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BrancheTestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BrancheTestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BrancheTestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BrancheTestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BrancheTestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBrancheTestRecordData({
  BrancheListStruct? branch,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'branch': BrancheListStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "branch" field.
  addBrancheListStructData(firestoreData, branch, 'branch');

  return firestoreData;
}

class BrancheTestRecordDocumentEquality implements Equality<BrancheTestRecord> {
  const BrancheTestRecordDocumentEquality();

  @override
  bool equals(BrancheTestRecord? e1, BrancheTestRecord? e2) {
    return e1?.branch == e2?.branch;
  }

  @override
  int hash(BrancheTestRecord? e) => const ListEquality().hash([e?.branch]);

  @override
  bool isValidKey(Object? o) => o is BrancheTestRecord;
}
