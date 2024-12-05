import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              'assets/images/splash_(2).gif',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'signin': ParameterData.none(),
  'Notifications': ParameterData.none(),
  'SupplierProducts': (data) async => ParameterData(
        allParams: {
          'sup': getParameter<DocumentReference>(data, 'sup'),
        },
      ),
  'ProductDetail': (data) async => ParameterData(
        allParams: {
          'pro': await getDocumentParameter<ProductsRecord>(
              data, 'pro', ProductsRecord.fromSnapshot),
          'sup': await getDocumentParameter<SupplierRecord>(
              data, 'sup', SupplierRecord.fromSnapshot),
        },
      ),
  'Basket': (data) async => ParameterData(
        allParams: {
          'supp': getParameter<DocumentReference>(data, 'supp'),
          'sup': getParameter<DocumentReference>(data, 'sup'),
        },
      ),
  'Checkout': (data) async => ParameterData(
        allParams: {
          'supp': getParameter<DocumentReference>(data, 'supp'),
          'pro': await getDocumentParameter<ProductsRecord>(
              data, 'pro', ProductsRecord.fromSnapshot),
          'order': getParameter<DocumentReference>(data, 'order'),
        },
      ),
  'homeAfterOrder': ParameterData.none(),
  'profile': ParameterData.none(),
  'EditProfile': ParameterData.none(),
  'myOrder': (data) async => ParameterData(
        allParams: {
          'supp': await getDocumentParameter<CartRecord>(
              data, 'supp', CartRecord.fromSnapshot),
          'order': getParameter<DocumentReference>(data, 'order'),
        },
      ),
  'OrderDetail': (data) async => ParameterData(
        allParams: {
          'order': getParameter<DocumentReference>(data, 'order'),
        },
      ),
  'Offer': (data) async => ParameterData(
        allParams: {
          'sup': await getDocumentParameter<UserRecord>(
              data, 'sup', UserRecord.fromSnapshot),
        },
      ),
  'FeaturedProducts': (data) async => ParameterData(
        allParams: {
          'pro': await getDocumentParameter<ProductsRecord>(
              data, 'pro', ProductsRecord.fromSnapshot),
          'sup': await getDocumentParameter<UserRecord>(
              data, 'sup', UserRecord.fromSnapshot),
        },
      ),
  'Suppliers': ParameterData.none(),
  'Articles': ParameterData.none(),
  'ArticlesDetails': (data) async => ParameterData(
        allParams: {
          'article': await getDocumentParameter<ArticalesRecord>(
              data, 'article', ArticalesRecord.fromSnapshot),
        },
      ),
  'ImageGallery': ParameterData.none(),
  'FAQs': ParameterData.none(),
  'settings': ParameterData.none(),
  'ChangePassword': ParameterData.none(),
  'AboutUs': ParameterData.none(),
  'MissionVision': ParameterData.none(),
  'ContactUs': ParameterData.none(),
  'PrivacyPolicy': ParameterData.none(),
  'TermsConditions': ParameterData.none(),
  'test': ParameterData.none(),
  'SupplierRegister': ParameterData.none(),
  'SupplierHomePage': ParameterData.none(),
  'SupplierAddProducts': ParameterData.none(),
  'NotificationPage': ParameterData.none(),
  'SupplierProfile': ParameterData.none(),
  'SupplierEditProfile': ParameterData.none(),
  'SupplierMyOrder': ParameterData.none(),
  'SupplierOrderDetails': (data) async => ParameterData(
        allParams: {
          'order': getParameter<DocumentReference>(data, 'order'),
          'sup': getParameter<DocumentReference>(data, 'sup'),
        },
      ),
  'ManageOffers': ParameterData.none(),
  'AddNewOffer': ParameterData.none(),
  'SelectPackges': ParameterData.none(),
  'ManageProducts': ParameterData.none(),
  'SupplierFeaturedProducts': ParameterData.none(),
  'SelectProducts': ParameterData.none(),
  'PaymentProfile': ParameterData.none(),
  'RatingReviews': ParameterData.none(),
  'EditProduct': (data) async => ParameterData(
        allParams: {
          'pro': await getDocumentParameter<ProductsRecord>(
              data, 'pro', ProductsRecord.fromSnapshot),
        },
      ),
  'LogInAsSupplier': ParameterData.none(),
  'LoginCodeSupplier': (data) async => ParameterData(
        allParams: {
          'user': await getDocumentParameter<UserRecord>(
              data, 'user', UserRecord.fromSnapshot),
        },
      ),
  'SelectUser': ParameterData.none(),
  'RegisterUser': ParameterData.none(),
  'DeletedProductsPage': ParameterData.none(),
  'test2': ParameterData.none(),
  'OrderDetails': (data) async => ParameterData(
        allParams: {
          'order': getParameter<DocumentReference>(data, 'order'),
          'order2': await getDocumentParameter<OrderRecord>(
              data, 'order2', OrderRecord.fromSnapshot),
        },
      ),
  'RegisterWithPhone': ParameterData.none(),
  'LoginWithPhone': ParameterData.none(),
  'AddProduct': ParameterData.none(),
  'LoginTestPhone': ParameterData.none(),
  'RegisterWithOTP': ParameterData.none(),
  'RegisterCode': (data) async => ParameterData(
        allParams: {
          'fullname': getParameter<String>(data, 'fullname'),
          'fullnameAr': getParameter<String>(data, 'fullnameAr'),
        },
      ),
  'LoginCode': ParameterData.none(),
  'LoginSup': ParameterData.none(),
  'S_AddBranches': (data) async => ParameterData(
        allParams: {
          'address': getParameter<String>(data, 'address'),
          'latlang': getParameter<LatLng>(data, 'latlang'),
        },
      ),
  'SelectLanguage': ParameterData.none(),
  'PaymentProfileCopy': ParameterData.none(),
  'S_PaymentHistory': ParameterData.none(),
  'RegisterWithOTPCopy': (data) async => ParameterData(
        allParams: {
          'address': getParameter<String>(data, 'address'),
          'latlang': getParameter<LatLng>(data, 'latlang'),
        },
      ),
  'S_AddAddressMap': ParameterData.none(),
  'RegisterMap': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
