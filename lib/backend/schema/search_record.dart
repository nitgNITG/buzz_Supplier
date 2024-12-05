import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchRecord extends FirestoreRecord {
  SearchRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "AddressAr" field.
  String? _addressAr;
  String get addressAr => _addressAr ?? '';
  bool hasAddressAr() => _addressAr != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _address = snapshotData['Address'] as String?;
    _addressAr = snapshotData['AddressAr'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Search')
          : FirebaseFirestore.instance.collectionGroup('Search');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Search').doc(id);

  static Stream<SearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchRecord.fromSnapshot(s));

  static Future<SearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchRecord.fromSnapshot(s));

  static SearchRecord fromSnapshot(DocumentSnapshot snapshot) => SearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchRecordData({
  String? address,
  String? addressAr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Address': address,
      'AddressAr': addressAr,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchRecordDocumentEquality implements Equality<SearchRecord> {
  const SearchRecordDocumentEquality();

  @override
  bool equals(SearchRecord? e1, SearchRecord? e2) {
    return e1?.address == e2?.address && e1?.addressAr == e2?.addressAr;
  }

  @override
  int hash(SearchRecord? e) =>
      const ListEquality().hash([e?.address, e?.addressAr]);

  @override
  bool isValidKey(Object? o) => o is SearchRecord;
}
