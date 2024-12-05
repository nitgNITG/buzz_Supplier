// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductListStruct extends FFFirebaseStruct {
  ProductListStruct({
    int? quantity,
    DocumentReference? pro,
    DocumentReference? sup,
    int? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantity = quantity,
        _pro = pro,
        _sup = sup,
        _price = price,
        super(firestoreUtilData);

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "pro" field.
  DocumentReference? _pro;
  DocumentReference? get pro => _pro;
  set pro(DocumentReference? val) => _pro = val;

  bool hasPro() => _pro != null;

  // "sup" field.
  DocumentReference? _sup;
  DocumentReference? get sup => _sup;
  set sup(DocumentReference? val) => _sup = val;

  bool hasSup() => _sup != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ProductListStruct fromMap(Map<String, dynamic> data) =>
      ProductListStruct(
        quantity: castToType<int>(data['Quantity']),
        pro: data['pro'] as DocumentReference?,
        sup: data['sup'] as DocumentReference?,
        price: castToType<int>(data['price']),
      );

  static ProductListStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Quantity': _quantity,
        'pro': _pro,
        'sup': _sup,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'pro': serializeParam(
          _pro,
          ParamType.DocumentReference,
        ),
        'sup': serializeParam(
          _sup,
          ParamType.DocumentReference,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductListStruct(
        quantity: deserializeParam(
          data['Quantity'],
          ParamType.int,
          false,
        ),
        pro: deserializeParam(
          data['pro'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Products'],
        ),
        sup: deserializeParam(
          data['sup'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['User'],
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductListStruct &&
        quantity == other.quantity &&
        pro == other.pro &&
        sup == other.sup &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([quantity, pro, sup, price]);
}

ProductListStruct createProductListStruct({
  int? quantity,
  DocumentReference? pro,
  DocumentReference? sup,
  int? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductListStruct(
      quantity: quantity,
      pro: pro,
      sup: sup,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductListStruct? updateProductListStruct(
  ProductListStruct? productList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductListStructData(
  Map<String, dynamic> firestoreData,
  ProductListStruct? productList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productList == null) {
    return;
  }
  if (productList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productListData =
      getProductListFirestoreData(productList, forFieldValue);
  final nestedData =
      productListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductListFirestoreData(
  ProductListStruct? productList, [
  bool forFieldValue = false,
]) {
  if (productList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productList.toMap());

  // Add any Firestore field values
  productList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductListListFirestoreData(
  List<ProductListStruct>? productLists,
) =>
    productLists?.map((e) => getProductListFirestoreData(e, true)).toList() ??
    [];
