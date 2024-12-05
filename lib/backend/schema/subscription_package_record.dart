import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubscriptionPackageRecord extends FirestoreRecord {
  SubscriptionPackageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "IsToken" field.
  bool? _isToken;
  bool get isToken => _isToken ?? false;
  bool hasIsToken() => _isToken != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Duriton" field.
  String? _duriton;
  String get duriton => _duriton ?? '';
  bool hasDuriton() => _duriton != null;

  void _initializeFields() {
    _active = snapshotData['Active'] as bool?;
    _name = snapshotData['Name'] as String?;
    _isToken = snapshotData['IsToken'] as bool?;
    _price = castToType<double>(snapshotData['Price']);
    _description = snapshotData['Description'] as String?;
    _duriton = snapshotData['Duriton'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SubscriptionPackage');

  static Stream<SubscriptionPackageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubscriptionPackageRecord.fromSnapshot(s));

  static Future<SubscriptionPackageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubscriptionPackageRecord.fromSnapshot(s));

  static SubscriptionPackageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubscriptionPackageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubscriptionPackageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubscriptionPackageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubscriptionPackageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubscriptionPackageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubscriptionPackageRecordData({
  bool? active,
  String? name,
  bool? isToken,
  double? price,
  String? description,
  String? duriton,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Active': active,
      'Name': name,
      'IsToken': isToken,
      'Price': price,
      'Description': description,
      'Duriton': duriton,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubscriptionPackageRecordDocumentEquality
    implements Equality<SubscriptionPackageRecord> {
  const SubscriptionPackageRecordDocumentEquality();

  @override
  bool equals(SubscriptionPackageRecord? e1, SubscriptionPackageRecord? e2) {
    return e1?.active == e2?.active &&
        e1?.name == e2?.name &&
        e1?.isToken == e2?.isToken &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description &&
        e1?.duriton == e2?.duriton;
  }

  @override
  int hash(SubscriptionPackageRecord? e) => const ListEquality().hash(
      [e?.active, e?.name, e?.isToken, e?.price, e?.description, e?.duriton]);

  @override
  bool isValidKey(Object? o) => o is SubscriptionPackageRecord;
}
