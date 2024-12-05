import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticalesRecord extends FirestoreRecord {
  ArticalesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ArticalesBy" field.
  String? _articalesBy;
  String get articalesBy => _articalesBy ?? '';
  bool hasArticalesBy() => _articalesBy != null;

  // "ArticalesName" field.
  String? _articalesName;
  String get articalesName => _articalesName ?? '';
  bool hasArticalesName() => _articalesName != null;

  // "Details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _articalesBy = snapshotData['ArticalesBy'] as String?;
    _articalesName = snapshotData['ArticalesName'] as String?;
    _details = snapshotData['Details'] as String?;
    _image = snapshotData['Image'] as String?;
    _time = snapshotData['Time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Articales');

  static Stream<ArticalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticalesRecord.fromSnapshot(s));

  static Future<ArticalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticalesRecord.fromSnapshot(s));

  static ArticalesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticalesRecordData({
  String? articalesBy,
  String? articalesName,
  String? details,
  String? image,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ArticalesBy': articalesBy,
      'ArticalesName': articalesName,
      'Details': details,
      'Image': image,
      'Time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticalesRecordDocumentEquality implements Equality<ArticalesRecord> {
  const ArticalesRecordDocumentEquality();

  @override
  bool equals(ArticalesRecord? e1, ArticalesRecord? e2) {
    return e1?.articalesBy == e2?.articalesBy &&
        e1?.articalesName == e2?.articalesName &&
        e1?.details == e2?.details &&
        e1?.image == e2?.image &&
        e1?.time == e2?.time;
  }

  @override
  int hash(ArticalesRecord? e) => const ListEquality()
      .hash([e?.articalesBy, e?.articalesName, e?.details, e?.image, e?.time]);

  @override
  bool isValidKey(Object? o) => o is ArticalesRecord;
}
