import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupplierRatingRecord extends FirestoreRecord {
  SupplierRatingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _rate = castToType<double>(snapshotData['Rate']);
    _user = snapshotData['User'] as DocumentReference?;
    _time = snapshotData['Time'] as DateTime?;
    _comment = snapshotData['Comment'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SupplierRating')
          : FirebaseFirestore.instance.collectionGroup('SupplierRating');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('SupplierRating').doc(id);

  static Stream<SupplierRatingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupplierRatingRecord.fromSnapshot(s));

  static Future<SupplierRatingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupplierRatingRecord.fromSnapshot(s));

  static SupplierRatingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupplierRatingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupplierRatingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupplierRatingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupplierRatingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupplierRatingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupplierRatingRecordData({
  double? rate,
  DocumentReference? user,
  DateTime? time,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Rate': rate,
      'User': user,
      'Time': time,
      'Comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupplierRatingRecordDocumentEquality
    implements Equality<SupplierRatingRecord> {
  const SupplierRatingRecordDocumentEquality();

  @override
  bool equals(SupplierRatingRecord? e1, SupplierRatingRecord? e2) {
    return e1?.rate == e2?.rate &&
        e1?.user == e2?.user &&
        e1?.time == e2?.time &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(SupplierRatingRecord? e) =>
      const ListEquality().hash([e?.rate, e?.user, e?.time, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is SupplierRatingRecord;
}
