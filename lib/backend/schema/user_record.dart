import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "Location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "tradelicense" field.
  String? _tradelicense;
  String get tradelicense => _tradelicense ?? '';
  bool hasTradelicense() => _tradelicense != null;

  // "PlaceType" field.
  String? _placeType;
  String get placeType => _placeType ?? '';
  bool hasPlaceType() => _placeType != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "notification" field.
  bool? _notification;
  bool get notification => _notification ?? false;
  bool hasNotification() => _notification != null;

  // "AvgRating" field.
  double? _avgRating;
  double get avgRating => _avgRating ?? 0.0;
  bool hasAvgRating() => _avgRating != null;

  // "PlaceTypeArabic" field.
  String? _placeTypeArabic;
  String get placeTypeArabic => _placeTypeArabic ?? '';
  bool hasPlaceTypeArabic() => _placeTypeArabic != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "percentage" field.
  double? _percentage;
  double get percentage => _percentage ?? 0.0;
  bool hasPercentage() => _percentage != null;

  // "addressarabic" field.
  String? _addressarabic;
  String get addressarabic => _addressarabic ?? '';
  bool hasAddressarabic() => _addressarabic != null;

  // "addressarabiclatlang" field.
  String? _addressarabiclatlang;
  String get addressarabiclatlang => _addressarabiclatlang ?? '';
  bool hasAddressarabiclatlang() => _addressarabiclatlang != null;

  // "fullnameAr" field.
  String? _fullnameAr;
  String get fullnameAr => _fullnameAr ?? '';
  bool hasFullnameAr() => _fullnameAr != null;

  // "isBlocked" field.
  bool? _isBlocked;
  bool get isBlocked => _isBlocked ?? false;
  bool hasIsBlocked() => _isBlocked != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  void _initializeFields() {
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _type = snapshotData['Type'] as String?;
    _rate = castToType<double>(snapshotData['Rate']);
    _location = snapshotData['Location'] as LatLng?;
    _address = snapshotData['Address'] as String?;
    _tradelicense = snapshotData['tradelicense'] as String?;
    _placeType = snapshotData['PlaceType'] as String?;
    _city = snapshotData['City'] as String?;
    _notification = snapshotData['notification'] as bool?;
    _avgRating = castToType<double>(snapshotData['AvgRating']);
    _placeTypeArabic = snapshotData['PlaceTypeArabic'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _amount = castToType<int>(snapshotData['amount']);
    _percentage = castToType<double>(snapshotData['percentage']);
    _addressarabic = snapshotData['addressarabic'] as String?;
    _addressarabiclatlang = snapshotData['addressarabiclatlang'] as String?;
    _fullnameAr = snapshotData['fullnameAr'] as String?;
    _isBlocked = snapshotData['isBlocked'] as bool?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? phone,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? type,
  double? rate,
  LatLng? location,
  String? address,
  String? tradelicense,
  String? placeType,
  String? city,
  bool? notification,
  double? avgRating,
  String? placeTypeArabic,
  DocumentReference? user,
  int? amount,
  double? percentage,
  String? addressarabic,
  String? addressarabiclatlang,
  String? fullnameAr,
  bool? isBlocked,
  bool? isDeleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'phone': phone,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Type': type,
      'Rate': rate,
      'Location': location,
      'Address': address,
      'tradelicense': tradelicense,
      'PlaceType': placeType,
      'City': city,
      'notification': notification,
      'AvgRating': avgRating,
      'PlaceTypeArabic': placeTypeArabic,
      'user': user,
      'amount': amount,
      'percentage': percentage,
      'addressarabic': addressarabic,
      'addressarabiclatlang': addressarabiclatlang,
      'fullnameAr': fullnameAr,
      'isBlocked': isBlocked,
      'isDeleted': isDeleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.type == e2?.type &&
        e1?.rate == e2?.rate &&
        e1?.location == e2?.location &&
        e1?.address == e2?.address &&
        e1?.tradelicense == e2?.tradelicense &&
        e1?.placeType == e2?.placeType &&
        e1?.city == e2?.city &&
        e1?.notification == e2?.notification &&
        e1?.avgRating == e2?.avgRating &&
        e1?.placeTypeArabic == e2?.placeTypeArabic &&
        e1?.user == e2?.user &&
        e1?.amount == e2?.amount &&
        e1?.percentage == e2?.percentage &&
        e1?.addressarabic == e2?.addressarabic &&
        e1?.addressarabiclatlang == e2?.addressarabiclatlang &&
        e1?.fullnameAr == e2?.fullnameAr &&
        e1?.isBlocked == e2?.isBlocked &&
        e1?.isDeleted == e2?.isDeleted;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.phone,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.type,
        e?.rate,
        e?.location,
        e?.address,
        e?.tradelicense,
        e?.placeType,
        e?.city,
        e?.notification,
        e?.avgRating,
        e?.placeTypeArabic,
        e?.user,
        e?.amount,
        e?.percentage,
        e?.addressarabic,
        e?.addressarabiclatlang,
        e?.fullnameAr,
        e?.isBlocked,
        e?.isDeleted
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
