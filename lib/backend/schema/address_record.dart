import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressRecord extends FirestoreRecord {
  AddressRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "Add" field.
  String? _add;
  String get add => _add ?? '';
  bool hasAdd() => _add != null;

  // "Details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "latlng" field.
  LatLng? _latlng;
  LatLng? get latlng => _latlng;
  bool hasLatlng() => _latlng != null;

  // "Area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _add = snapshotData['Add'] as String?;
    _details = snapshotData['Details'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _user = snapshotData['User'] as DocumentReference?;
    _city = snapshotData['City'] as String?;
    _latlng = snapshotData['latlng'] as LatLng?;
    _area = snapshotData['Area'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Address')
          : FirebaseFirestore.instance.collectionGroup('Address');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Address').doc(id);

  static Stream<AddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressRecord.fromSnapshot(s));

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressRecord.fromSnapshot(s));

  static AddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressRecordData({
  String? name,
  String? phone,
  String? add,
  String? details,
  DateTime? time,
  DocumentReference? user,
  String? city,
  LatLng? latlng,
  String? area,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Phone': phone,
      'Add': add,
      'Details': details,
      'Time': time,
      'User': user,
      'City': city,
      'latlng': latlng,
      'Area': area,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressRecordDocumentEquality implements Equality<AddressRecord> {
  const AddressRecordDocumentEquality();

  @override
  bool equals(AddressRecord? e1, AddressRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.add == e2?.add &&
        e1?.details == e2?.details &&
        e1?.time == e2?.time &&
        e1?.user == e2?.user &&
        e1?.city == e2?.city &&
        e1?.latlng == e2?.latlng &&
        e1?.area == e2?.area;
  }

  @override
  int hash(AddressRecord? e) => const ListEquality().hash([
        e?.name,
        e?.phone,
        e?.add,
        e?.details,
        e?.time,
        e?.user,
        e?.city,
        e?.latlng,
        e?.area
      ]);

  @override
  bool isValidKey(Object? o) => o is AddressRecord;
}
