import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Supplier" field.
  DocumentReference? _supplier;
  DocumentReference? get supplier => _supplier;
  bool hasSupplier() => _supplier != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Dc_Status" field.
  String? _dcStatus;
  String get dcStatus => _dcStatus ?? '';
  bool hasDcStatus() => _dcStatus != null;

  // "DeliveryCompany" field.
  DocumentReference? _deliveryCompany;
  DocumentReference? get deliveryCompany => _deliveryCompany;
  bool hasDeliveryCompany() => _deliveryCompany != null;

  // "Rider" field.
  DocumentReference? _rider;
  DocumentReference? get rider => _rider;
  bool hasRider() => _rider != null;

  // "Subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "VAT" field.
  double? _vat;
  double get vat => _vat ?? 0.0;
  bool hasVat() => _vat != null;

  // "DeliveryFee" field.
  double? _deliveryFee;
  double get deliveryFee => _deliveryFee ?? 0.0;
  bool hasDeliveryFee() => _deliveryFee != null;

  // "Address" field.
  DocumentReference? _address;
  DocumentReference? get address => _address;
  bool hasAddress() => _address != null;

  // "PaymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "PaymentID" field.
  String? _paymentID;
  String get paymentID => _paymentID ?? '';
  bool hasPaymentID() => _paymentID != null;

  // "CancellationReason" field.
  String? _cancellationReason;
  String get cancellationReason => _cancellationReason ?? '';
  bool hasCancellationReason() => _cancellationReason != null;

  // "OrderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "ProductData" field.
  List<ProductListStruct>? _productData;
  List<ProductListStruct> get productData => _productData ?? const [];
  bool hasProductData() => _productData != null;

  // "Total" field.
  int? _total;
  int get total => _total ?? 0;
  bool hasTotal() => _total != null;

  // "StatuesArabic" field.
  String? _statuesArabic;
  String get statuesArabic => _statuesArabic ?? '';
  bool hasStatuesArabic() => _statuesArabic != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "branchRef" field.
  DocumentReference? _branchRef;
  DocumentReference? get branchRef => _branchRef;
  bool hasBranchRef() => _branchRef != null;

  void _initializeFields() {
    _status = snapshotData['Status'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _user = snapshotData['User'] as DocumentReference?;
    _supplier = snapshotData['Supplier'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _dcStatus = snapshotData['Dc_Status'] as String?;
    _deliveryCompany = snapshotData['DeliveryCompany'] as DocumentReference?;
    _rider = snapshotData['Rider'] as DocumentReference?;
    _subtotal = castToType<double>(snapshotData['Subtotal']);
    _vat = castToType<double>(snapshotData['VAT']);
    _deliveryFee = castToType<double>(snapshotData['DeliveryFee']);
    _address = snapshotData['Address'] as DocumentReference?;
    _paymentMethod = snapshotData['PaymentMethod'] as String?;
    _paymentID = snapshotData['PaymentID'] as String?;
    _cancellationReason = snapshotData['CancellationReason'] as String?;
    _orderId = snapshotData['OrderId'] as String?;
    _productData = getStructList(
      snapshotData['ProductData'],
      ProductListStruct.fromMap,
    );
    _total = castToType<int>(snapshotData['Total']);
    _statuesArabic = snapshotData['StatuesArabic'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _branchRef = snapshotData['branchRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? status,
  DateTime? time,
  DocumentReference? user,
  DocumentReference? supplier,
  int? quantity,
  String? dcStatus,
  DocumentReference? deliveryCompany,
  DocumentReference? rider,
  double? subtotal,
  double? vat,
  double? deliveryFee,
  DocumentReference? address,
  String? paymentMethod,
  String? paymentID,
  String? cancellationReason,
  String? orderId,
  int? total,
  String? statuesArabic,
  String? address2,
  DocumentReference? branchRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Status': status,
      'Time': time,
      'User': user,
      'Supplier': supplier,
      'Quantity': quantity,
      'Dc_Status': dcStatus,
      'DeliveryCompany': deliveryCompany,
      'Rider': rider,
      'Subtotal': subtotal,
      'VAT': vat,
      'DeliveryFee': deliveryFee,
      'Address': address,
      'PaymentMethod': paymentMethod,
      'PaymentID': paymentID,
      'CancellationReason': cancellationReason,
      'OrderId': orderId,
      'Total': total,
      'StatuesArabic': statuesArabic,
      'address2': address2,
      'branchRef': branchRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.status == e2?.status &&
        e1?.time == e2?.time &&
        e1?.user == e2?.user &&
        e1?.supplier == e2?.supplier &&
        e1?.quantity == e2?.quantity &&
        e1?.dcStatus == e2?.dcStatus &&
        e1?.deliveryCompany == e2?.deliveryCompany &&
        e1?.rider == e2?.rider &&
        e1?.subtotal == e2?.subtotal &&
        e1?.vat == e2?.vat &&
        e1?.deliveryFee == e2?.deliveryFee &&
        e1?.address == e2?.address &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.paymentID == e2?.paymentID &&
        e1?.cancellationReason == e2?.cancellationReason &&
        e1?.orderId == e2?.orderId &&
        listEquality.equals(e1?.productData, e2?.productData) &&
        e1?.total == e2?.total &&
        e1?.statuesArabic == e2?.statuesArabic &&
        e1?.address2 == e2?.address2 &&
        e1?.branchRef == e2?.branchRef;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.status,
        e?.time,
        e?.user,
        e?.supplier,
        e?.quantity,
        e?.dcStatus,
        e?.deliveryCompany,
        e?.rider,
        e?.subtotal,
        e?.vat,
        e?.deliveryFee,
        e?.address,
        e?.paymentMethod,
        e?.paymentID,
        e?.cancellationReason,
        e?.orderId,
        e?.productData,
        e?.total,
        e?.statuesArabic,
        e?.address2,
        e?.branchRef
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
