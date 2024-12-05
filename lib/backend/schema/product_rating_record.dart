import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRatingRecord extends FirestoreRecord {
  ProductRatingRecord._(
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
          ? parent.collection('ProductRating')
          : FirebaseFirestore.instance.collectionGroup('ProductRating');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ProductRating').doc(id);

  static Stream<ProductRatingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRatingRecord.fromSnapshot(s));

  static Future<ProductRatingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRatingRecord.fromSnapshot(s));

  static ProductRatingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRatingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRatingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRatingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRatingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRatingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRatingRecordData({
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

class ProductRatingRecordDocumentEquality
    implements Equality<ProductRatingRecord> {
  const ProductRatingRecordDocumentEquality();

  @override
  bool equals(ProductRatingRecord? e1, ProductRatingRecord? e2) {
    return e1?.rate == e2?.rate &&
        e1?.user == e2?.user &&
        e1?.time == e2?.time &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(ProductRatingRecord? e) =>
      const ListEquality().hash([e?.rate, e?.user, e?.time, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is ProductRatingRecord;
}
