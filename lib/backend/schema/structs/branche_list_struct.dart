// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BrancheListStruct extends FFFirebaseStruct {
  BrancheListStruct({
    String? address,
    double? total,
    LatLng? location,
    double? totalOnline,
    DocumentReference? orderRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        _total = total,
        _location = location,
        _totalOnline = totalOnline,
        _orderRef = orderRef,
        super(firestoreUtilData);

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;

  bool hasLocation() => _location != null;

  // "TotalOnline" field.
  double? _totalOnline;
  double get totalOnline => _totalOnline ?? 0.0;
  set totalOnline(double? val) => _totalOnline = val;

  void incrementTotalOnline(double amount) =>
      totalOnline = totalOnline + amount;

  bool hasTotalOnline() => _totalOnline != null;

  // "OrderRef" field.
  DocumentReference? _orderRef;
  DocumentReference? get orderRef => _orderRef;
  set orderRef(DocumentReference? val) => _orderRef = val;

  bool hasOrderRef() => _orderRef != null;

  static BrancheListStruct fromMap(Map<String, dynamic> data) =>
      BrancheListStruct(
        address: data['address'] as String?,
        total: castToType<double>(data['Total']),
        location: data['location'] as LatLng?,
        totalOnline: castToType<double>(data['TotalOnline']),
        orderRef: data['OrderRef'] as DocumentReference?,
      );

  static BrancheListStruct? maybeFromMap(dynamic data) => data is Map
      ? BrancheListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'Total': _total,
        'location': _location,
        'TotalOnline': _totalOnline,
        'OrderRef': _orderRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'Total': serializeParam(
          _total,
          ParamType.double,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'TotalOnline': serializeParam(
          _totalOnline,
          ParamType.double,
        ),
        'OrderRef': serializeParam(
          _orderRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static BrancheListStruct fromSerializableMap(Map<String, dynamic> data) =>
      BrancheListStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['Total'],
          ParamType.double,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
        totalOnline: deserializeParam(
          data['TotalOnline'],
          ParamType.double,
          false,
        ),
        orderRef: deserializeParam(
          data['OrderRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['order'],
        ),
      );

  @override
  String toString() => 'BrancheListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BrancheListStruct &&
        address == other.address &&
        total == other.total &&
        location == other.location &&
        totalOnline == other.totalOnline &&
        orderRef == other.orderRef;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([address, total, location, totalOnline, orderRef]);
}

BrancheListStruct createBrancheListStruct({
  String? address,
  double? total,
  LatLng? location,
  double? totalOnline,
  DocumentReference? orderRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BrancheListStruct(
      address: address,
      total: total,
      location: location,
      totalOnline: totalOnline,
      orderRef: orderRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BrancheListStruct? updateBrancheListStruct(
  BrancheListStruct? brancheList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    brancheList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBrancheListStructData(
  Map<String, dynamic> firestoreData,
  BrancheListStruct? brancheList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (brancheList == null) {
    return;
  }
  if (brancheList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && brancheList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final brancheListData =
      getBrancheListFirestoreData(brancheList, forFieldValue);
  final nestedData =
      brancheListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = brancheList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBrancheListFirestoreData(
  BrancheListStruct? brancheList, [
  bool forFieldValue = false,
]) {
  if (brancheList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(brancheList.toMap());

  // Add any Firestore field values
  brancheList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBrancheListListFirestoreData(
  List<BrancheListStruct>? brancheLists,
) =>
    brancheLists?.map((e) => getBrancheListFirestoreData(e, true)).toList() ??
    [];
