import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageGalleryRecord extends FirestoreRecord {
  ImageGalleryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  void _initializeFields() {
    _images = snapshotData['images'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ImageGallery');

  static Stream<ImageGalleryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImageGalleryRecord.fromSnapshot(s));

  static Future<ImageGalleryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImageGalleryRecord.fromSnapshot(s));

  static ImageGalleryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImageGalleryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImageGalleryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImageGalleryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImageGalleryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImageGalleryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImageGalleryRecordData({
  String? images,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'images': images,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImageGalleryRecordDocumentEquality
    implements Equality<ImageGalleryRecord> {
  const ImageGalleryRecordDocumentEquality();

  @override
  bool equals(ImageGalleryRecord? e1, ImageGalleryRecord? e2) {
    return e1?.images == e2?.images;
  }

  @override
  int hash(ImageGalleryRecord? e) => const ListEquality().hash([e?.images]);

  @override
  bool isValidKey(Object? o) => o is ImageGalleryRecord;
}
