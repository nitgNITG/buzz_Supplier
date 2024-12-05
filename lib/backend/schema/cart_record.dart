import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Supplier" field.
  DocumentReference? _supplier;
  DocumentReference? get supplier => _supplier;
  bool hasSupplier() => _supplier != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "SupplierLocation" field.
  LatLng? _supplierLocation;
  LatLng? get supplierLocation => _supplierLocation;
  bool hasSupplierLocation() => _supplierLocation != null;

  // "ProductList" field.
  List<ProductListStruct>? _productList;
  List<ProductListStruct> get productList => _productList ?? const [];
  bool hasProductList() => _productList != null;

  // "UserRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _supplier = snapshotData['Supplier'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _supplierLocation = snapshotData['SupplierLocation'] as LatLng?;
    _productList = getStructList(
      snapshotData['ProductList'],
      ProductListStruct.fromMap,
    );
    _userRef = snapshotData['UserRef'] as DocumentReference?;
    _total = castToType<double>(snapshotData['Total']);
    _price = castToType<int>(snapshotData['Price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Cart')
          : FirebaseFirestore.instance.collectionGroup('Cart');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Cart').doc(id);

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? supplier,
  int? quantity,
  LatLng? supplierLocation,
  DocumentReference? userRef,
  double? total,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Supplier': supplier,
      'Quantity': quantity,
      'SupplierLocation': supplierLocation,
      'UserRef': userRef,
      'Total': total,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.supplier == e2?.supplier &&
        e1?.quantity == e2?.quantity &&
        e1?.supplierLocation == e2?.supplierLocation &&
        listEquality.equals(e1?.productList, e2?.productList) &&
        e1?.userRef == e2?.userRef &&
        e1?.total == e2?.total &&
        e1?.price == e2?.price;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.supplier,
        e?.quantity,
        e?.supplierLocation,
        e?.productList,
        e?.userRef,
        e?.total,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
