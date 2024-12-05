import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sendFrom" field.
  DocumentReference? _sendFrom;
  DocumentReference? get sendFrom => _sendFrom;
  bool hasSendFrom() => _sendFrom != null;

  // "sendTo" field.
  DocumentReference? _sendTo;
  DocumentReference? get sendTo => _sendTo;
  bool hasSendTo() => _sendTo != null;

  // "descreption" field.
  String? _descreption;
  String get descreption => _descreption ?? '';
  bool hasDescreption() => _descreption != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "viewed" field.
  bool? _viewed;
  bool get viewed => _viewed ?? false;
  bool hasViewed() => _viewed != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "statuesType" field.
  String? _statuesType;
  String get statuesType => _statuesType ?? '';
  bool hasStatuesType() => _statuesType != null;

  // "order" field.
  DocumentReference? _order;
  DocumentReference? get order => _order;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _sendFrom = snapshotData['sendFrom'] as DocumentReference?;
    _sendTo = snapshotData['sendTo'] as DocumentReference?;
    _descreption = snapshotData['descreption'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _viewed = snapshotData['viewed'] as bool?;
    _title = snapshotData['title'] as String?;
    _statuesType = snapshotData['statuesType'] as String?;
    _order = snapshotData['order'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  DocumentReference? sendFrom,
  DocumentReference? sendTo,
  String? descreption,
  DateTime? time,
  bool? viewed,
  String? title,
  String? statuesType,
  DocumentReference? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sendFrom': sendFrom,
      'sendTo': sendTo,
      'descreption': descreption,
      'time': time,
      'viewed': viewed,
      'title': title,
      'statuesType': statuesType,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.sendFrom == e2?.sendFrom &&
        e1?.sendTo == e2?.sendTo &&
        e1?.descreption == e2?.descreption &&
        e1?.time == e2?.time &&
        e1?.viewed == e2?.viewed &&
        e1?.title == e2?.title &&
        e1?.statuesType == e2?.statuesType &&
        e1?.order == e2?.order;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.sendFrom,
        e?.sendTo,
        e?.descreption,
        e?.time,
        e?.viewed,
        e?.title,
        e?.statuesType,
        e?.order
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
