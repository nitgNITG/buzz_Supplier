import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ProductName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "AvgRatings" field.
  double? _avgRatings;
  double get avgRatings => _avgRatings ?? 0.0;
  bool hasAvgRatings() => _avgRatings != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  bool hasFeatured() => _featured != null;

  // "IsOffer" field.
  bool? _isOffer;
  bool get isOffer => _isOffer ?? false;
  bool hasIsOffer() => _isOffer != null;

  // "Selling" field.
  int? _selling;
  int get selling => _selling ?? 0;
  bool hasSelling() => _selling != null;

  // "IsDelete" field.
  bool? _isDelete;
  bool get isDelete => _isDelete ?? false;
  bool hasIsDelete() => _isDelete != null;

  // "ProductImage" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "Supplier" field.
  DocumentReference? _supplier;
  DocumentReference? get supplier => _supplier;
  bool hasSupplier() => _supplier != null;

  // "PlaceName" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "OfferPercertage" field.
  int? _offerPercertage;
  int get offerPercertage => _offerPercertage ?? 0;
  bool hasOfferPercertage() => _offerPercertage != null;

  // "OriginalPrice" field.
  int? _originalPrice;
  int get originalPrice => _originalPrice ?? 0;
  bool hasOriginalPrice() => _originalPrice != null;

  // "AfterOfferd" field.
  int? _afterOfferd;
  int get afterOfferd => _afterOfferd ?? 0;
  bool hasAfterOfferd() => _afterOfferd != null;

  void _initializeFields() {
    _productName = snapshotData['ProductName'] as String?;
    _description = snapshotData['Description'] as String?;
    _createdTime = snapshotData['Created_time'] as DateTime?;
    _avgRatings = castToType<double>(snapshotData['AvgRatings']);
    _quantity = castToType<int>(snapshotData['Quantity']);
    _featured = snapshotData['Featured'] as bool?;
    _isOffer = snapshotData['IsOffer'] as bool?;
    _selling = castToType<int>(snapshotData['Selling']);
    _isDelete = snapshotData['IsDelete'] as bool?;
    _productImage = snapshotData['ProductImage'] as String?;
    _supplier = snapshotData['Supplier'] as DocumentReference?;
    _placeName = snapshotData['PlaceName'] as String?;
    _type = snapshotData['Type'] as String?;
    _offerPercertage = castToType<int>(snapshotData['OfferPercertage']);
    _originalPrice = castToType<int>(snapshotData['OriginalPrice']);
    _afterOfferd = castToType<int>(snapshotData['AfterOfferd']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productName,
  String? description,
  DateTime? createdTime,
  double? avgRatings,
  int? quantity,
  bool? featured,
  bool? isOffer,
  int? selling,
  bool? isDelete,
  String? productImage,
  DocumentReference? supplier,
  String? placeName,
  String? type,
  int? offerPercertage,
  int? originalPrice,
  int? afterOfferd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductName': productName,
      'Description': description,
      'Created_time': createdTime,
      'AvgRatings': avgRatings,
      'Quantity': quantity,
      'Featured': featured,
      'IsOffer': isOffer,
      'Selling': selling,
      'IsDelete': isDelete,
      'ProductImage': productImage,
      'Supplier': supplier,
      'PlaceName': placeName,
      'Type': type,
      'OfferPercertage': offerPercertage,
      'OriginalPrice': originalPrice,
      'AfterOfferd': afterOfferd,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.avgRatings == e2?.avgRatings &&
        e1?.quantity == e2?.quantity &&
        e1?.featured == e2?.featured &&
        e1?.isOffer == e2?.isOffer &&
        e1?.selling == e2?.selling &&
        e1?.isDelete == e2?.isDelete &&
        e1?.productImage == e2?.productImage &&
        e1?.supplier == e2?.supplier &&
        e1?.placeName == e2?.placeName &&
        e1?.type == e2?.type &&
        e1?.offerPercertage == e2?.offerPercertage &&
        e1?.originalPrice == e2?.originalPrice &&
        e1?.afterOfferd == e2?.afterOfferd;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.description,
        e?.createdTime,
        e?.avgRatings,
        e?.quantity,
        e?.featured,
        e?.isOffer,
        e?.selling,
        e?.isDelete,
        e?.productImage,
        e?.supplier,
        e?.placeName,
        e?.type,
        e?.offerPercertage,
        e?.originalPrice,
        e?.afterOfferd
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
