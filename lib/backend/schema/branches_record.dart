import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BranchesRecord extends FirestoreRecord {
  BranchesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BranchesAddress" field.
  List<String>? _branchesAddress;
  List<String> get branchesAddress => _branchesAddress ?? const [];
  bool hasBranchesAddress() => _branchesAddress != null;

  // "BranchesLocation" field.
  List<LatLng>? _branchesLocation;
  List<LatLng> get branchesLocation => _branchesLocation ?? const [];
  bool hasBranchesLocation() => _branchesLocation != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "BranchTotal" field.
  List<BrancheListStruct>? _branchTotal;
  List<BrancheListStruct> get branchTotal => _branchTotal ?? const [];
  bool hasBranchTotal() => _branchTotal != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _branchesAddress = getDataList(snapshotData['BranchesAddress']);
    _branchesLocation = getDataList(snapshotData['BranchesLocation']);
    _user = snapshotData['User'] as DocumentReference?;
    _branchTotal = getStructList(
      snapshotData['BranchTotal'],
      BrancheListStruct.fromMap,
    );
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Branches')
          : FirebaseFirestore.instance.collectionGroup('Branches');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Branches').doc(id);

  static Stream<BranchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BranchesRecord.fromSnapshot(s));

  static Future<BranchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BranchesRecord.fromSnapshot(s));

  static BranchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BranchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BranchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BranchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BranchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BranchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBranchesRecordData({
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class BranchesRecordDocumentEquality implements Equality<BranchesRecord> {
  const BranchesRecordDocumentEquality();

  @override
  bool equals(BranchesRecord? e1, BranchesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.branchesAddress, e2?.branchesAddress) &&
        listEquality.equals(e1?.branchesLocation, e2?.branchesLocation) &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.branchTotal, e2?.branchTotal);
  }

  @override
  int hash(BranchesRecord? e) => const ListEquality()
      .hash([e?.branchesAddress, e?.branchesLocation, e?.user, e?.branchTotal]);

  @override
  bool isValidKey(Object? o) => o is BranchesRecord;
}
