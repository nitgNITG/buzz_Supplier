import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Language = prefs.getBool('ff_Language') ?? _Language;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Userimage = '';
  String get Userimage => _Userimage;
  set Userimage(String value) {
    _Userimage = value;
  }

  String _LisImage = '';
  String get LisImage => _LisImage;
  set LisImage(String value) {
    _LisImage = value;
  }

  String _PaymentMethod = 'Cash On Delivery';
  String get PaymentMethod => _PaymentMethod;
  set PaymentMethod(String value) {
    _PaymentMethod = value;
  }

  String _ProductImage = '';
  String get ProductImage => _ProductImage;
  set ProductImage(String value) {
    _ProductImage = value;
  }

  String _Register = 'User';
  String get Register => _Register;
  set Register(String value) {
    _Register = value;
  }

  String _SupplierImage = '';
  String get SupplierImage => _SupplierImage;
  set SupplierImage(String value) {
    _SupplierImage = value;
  }

  List<String> _GalleryImages = [];
  List<String> get GalleryImages => _GalleryImages;
  set GalleryImages(List<String> value) {
    _GalleryImages = value;
  }

  void addToGalleryImages(String value) {
    GalleryImages.add(value);
  }

  void removeFromGalleryImages(String value) {
    GalleryImages.remove(value);
  }

  void removeAtIndexFromGalleryImages(int index) {
    GalleryImages.removeAt(index);
  }

  void updateGalleryImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    GalleryImages[index] = updateFn(_GalleryImages[index]);
  }

  void insertAtIndexInGalleryImages(int index, String value) {
    GalleryImages.insert(index, value);
  }

  String _orderid = '';
  String get orderid => _orderid;
  set orderid(String value) {
    _orderid = value;
  }

  String _Address = '';
  String get Address => _Address;
  set Address(String value) {
    _Address = value;
  }

  String _counteryCode = '+966';
  String get counteryCode => _counteryCode;
  set counteryCode(String value) {
    _counteryCode = value;
  }

  String _add = '';
  String get add => _add;
  set add(String value) {
    _add = value;
  }

  String _PhoneNumber = '';
  String get PhoneNumber => _PhoneNumber;
  set PhoneNumber(String value) {
    _PhoneNumber = value;
  }

  bool _Language = false;
  bool get Language => _Language;
  set Language(bool value) {
    _Language = value;
    prefs.setBool('ff_Language', value);
  }

  String _AddressMap = '';
  String get AddressMap => _AddressMap;
  set AddressMap(String value) {
    _AddressMap = value;
  }

  LatLng? _AddressLatLang;
  LatLng? get AddressLatLang => _AddressLatLang;
  set AddressLatLang(LatLng? value) {
    _AddressLatLang = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
