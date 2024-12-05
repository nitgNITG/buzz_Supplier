import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const SupplierHomePageWidget()
          : const SelectLanguageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const SupplierHomePageWidget()
              : const SelectLanguageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'signin',
          path: '/signin',
          builder: (context, params) => const SigninWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'SupplierProducts',
          path: '/supplierProducts',
          builder: (context, params) => SupplierProductsWidget(
            sup: params.getParam(
              'sup',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: 'ProductDetail',
          path: '/productDetail',
          asyncParams: {
            'pro': getDoc(['Products'], ProductsRecord.fromSnapshot),
            'sup': getDoc(['Supplier'], SupplierRecord.fromSnapshot),
          },
          builder: (context, params) => ProductDetailWidget(
            pro: params.getParam(
              'pro',
              ParamType.Document,
            ),
            sup: params.getParam(
              'sup',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Basket',
          path: '/basket',
          builder: (context, params) => BasketWidget(
            supp: params.getParam(
              'supp',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            sup: params.getParam(
              'sup',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User', 'Cart'],
            ),
          ),
        ),
        FFRoute(
          name: 'Checkout',
          path: '/checkout',
          asyncParams: {
            'pro': getDoc(['Products'], ProductsRecord.fromSnapshot),
          },
          builder: (context, params) => CheckoutWidget(
            supp: params.getParam(
              'supp',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            pro: params.getParam(
              'pro',
              ParamType.Document,
            ),
            order: params.getParam(
              'order',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['order'],
            ),
          ),
        ),
        FFRoute(
          name: 'homeAfterOrder',
          path: '/homeAfterOrder',
          builder: (context, params) => const HomeAfterOrderWidget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'myOrder',
          path: '/myOrder',
          asyncParams: {
            'supp': getDoc(['User', 'Cart'], CartRecord.fromSnapshot),
          },
          builder: (context, params) => MyOrderWidget(
            supp: params.getParam(
              'supp',
              ParamType.Document,
            ),
            order: params.getParam(
              'order',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: 'OrderDetail',
          path: '/orderDetail',
          builder: (context, params) => OrderDetailWidget(
            order: params.getParam(
              'order',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['order'],
            ),
          ),
        ),
        FFRoute(
          name: 'Offer',
          path: '/offer',
          asyncParams: {
            'sup': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => OfferWidget(
            sup: params.getParam(
              'sup',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'FeaturedProducts',
          path: '/featuredProducts',
          asyncParams: {
            'product': getDocList(['Products'], ProductsRecord.fromSnapshot),
            'pro': getDoc(['Products'], ProductsRecord.fromSnapshot),
            'sup': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => FeaturedProductsWidget(
            product: params.getParam<ProductsRecord>(
              'product',
              ParamType.Document,
              isList: true,
            ),
            pro: params.getParam(
              'pro',
              ParamType.Document,
            ),
            sup: params.getParam(
              'sup',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Suppliers',
          path: '/suppliers',
          builder: (context, params) => const SuppliersWidget(),
        ),
        FFRoute(
          name: 'Articles',
          path: '/articles',
          builder: (context, params) => const ArticlesWidget(),
        ),
        FFRoute(
          name: 'ArticlesDetails',
          path: '/articlesDetails',
          asyncParams: {
            'article': getDoc(['Articales'], ArticalesRecord.fromSnapshot),
          },
          builder: (context, params) => ArticlesDetailsWidget(
            article: params.getParam(
              'article',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'ImageGallery',
          path: '/imageGallery',
          builder: (context, params) => const ImageGalleryWidget(),
        ),
        FFRoute(
          name: 'FAQs',
          path: '/fAQs',
          builder: (context, params) => const FAQsWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          builder: (context, params) => const SettingsWidget(),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'AboutUs',
          path: '/aboutUs',
          builder: (context, params) => const AboutUsWidget(),
        ),
        FFRoute(
          name: 'MissionVision',
          path: '/missionVision',
          builder: (context, params) => const MissionVisionWidget(),
        ),
        FFRoute(
          name: 'ContactUs',
          path: '/contactUs',
          builder: (context, params) => const ContactUsWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => const PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'TermsConditions',
          path: '/termsConditions',
          builder: (context, params) => const TermsConditionsWidget(),
        ),
        FFRoute(
          name: 'test',
          path: '/test',
          builder: (context, params) => const TestWidget(),
        ),
        FFRoute(
          name: 'SupplierRegister',
          path: '/supplierRegister',
          builder: (context, params) => const SupplierRegisterWidget(),
        ),
        FFRoute(
          name: 'SupplierHomePage',
          path: '/supplierHomePage',
          builder: (context, params) => const SupplierHomePageWidget(),
        ),
        FFRoute(
          name: 'SupplierAddProducts',
          path: '/supplierAddProducts',
          builder: (context, params) => const SupplierAddProductsWidget(),
        ),
        FFRoute(
          name: 'NotificationPage',
          path: '/notificationPage',
          builder: (context, params) => const NotificationPageWidget(),
        ),
        FFRoute(
          name: 'SupplierProfile',
          path: '/supplierProfile',
          builder: (context, params) => const SupplierProfileWidget(),
        ),
        FFRoute(
          name: 'SupplierEditProfile',
          path: '/supplierEditProfile',
          builder: (context, params) => const SupplierEditProfileWidget(),
        ),
        FFRoute(
          name: 'SupplierMyOrder',
          path: '/supplierMyOrder',
          builder: (context, params) => const SupplierMyOrderWidget(),
        ),
        FFRoute(
          name: 'SupplierOrderDetails',
          path: '/supplierOrderDetails',
          builder: (context, params) => SupplierOrderDetailsWidget(
            order: params.getParam(
              'order',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['order'],
            ),
            sup: params.getParam(
              'sup',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: 'ManageOffers',
          path: '/manageOffers',
          builder: (context, params) => const ManageOffersWidget(),
        ),
        FFRoute(
          name: 'AddNewOffer',
          path: '/addNewOffer',
          builder: (context, params) => const AddNewOfferWidget(),
        ),
        FFRoute(
          name: 'SelectPackges',
          path: '/selectPackges',
          builder: (context, params) => const SelectPackgesWidget(),
        ),
        FFRoute(
          name: 'ManageProducts',
          path: '/manageProducts',
          builder: (context, params) => const ManageProductsWidget(),
        ),
        FFRoute(
          name: 'SupplierFeaturedProducts',
          path: '/supplierFeaturedProducts',
          builder: (context, params) => const SupplierFeaturedProductsWidget(),
        ),
        FFRoute(
          name: 'SelectProducts',
          path: '/selectProducts',
          builder: (context, params) => const SelectProductsWidget(),
        ),
        FFRoute(
          name: 'PaymentProfile',
          path: '/paymentProfile',
          builder: (context, params) => const PaymentProfileWidget(),
        ),
        FFRoute(
          name: 'RatingReviews',
          path: '/ratingReviews',
          builder: (context, params) => const RatingReviewsWidget(),
        ),
        FFRoute(
          name: 'EditProduct',
          path: '/editProduct',
          asyncParams: {
            'pro': getDoc(['Products'], ProductsRecord.fromSnapshot),
          },
          builder: (context, params) => EditProductWidget(
            pro: params.getParam(
              'pro',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'LogInAsSupplier',
          path: '/logInAsSupplier',
          builder: (context, params) => const LogInAsSupplierWidget(),
        ),
        FFRoute(
          name: 'LoginCodeSupplier',
          path: '/loginCodeSupplier',
          asyncParams: {
            'user': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => LoginCodeSupplierWidget(
            user: params.getParam(
              'user',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'SelectUser',
          path: '/selectUser',
          builder: (context, params) => const SelectUserWidget(),
        ),
        FFRoute(
          name: 'RegisterUser',
          path: '/registerUser',
          builder: (context, params) => const RegisterUserWidget(),
        ),
        FFRoute(
          name: 'DeletedProductsPage',
          path: '/deletedProductsPage',
          builder: (context, params) => const DeletedProductsPageWidget(),
        ),
        FFRoute(
          name: 'test2',
          path: '/test2',
          builder: (context, params) => const Test2Widget(),
        ),
        FFRoute(
          name: 'OrderDetails',
          path: '/orderDetails',
          asyncParams: {
            'order2': getDoc(['order'], OrderRecord.fromSnapshot),
          },
          builder: (context, params) => OrderDetailsWidget(
            order: params.getParam(
              'order',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['order'],
            ),
            order2: params.getParam(
              'order2',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'RegisterWithPhone',
          path: '/registerWithPhone',
          builder: (context, params) => const RegisterWithPhoneWidget(),
        ),
        FFRoute(
          name: 'LoginWithPhone',
          path: '/loginWithPhone',
          builder: (context, params) => const LoginWithPhoneWidget(),
        ),
        FFRoute(
          name: 'AddProduct',
          path: '/addProduct',
          builder: (context, params) => const AddProductWidget(),
        ),
        FFRoute(
          name: 'LoginTestPhone',
          path: '/loginTestPhone',
          builder: (context, params) => const LoginTestPhoneWidget(),
        ),
        FFRoute(
          name: 'RegisterWithOTP',
          path: '/registerWithOTP',
          builder: (context, params) => const RegisterWithOTPWidget(),
        ),
        FFRoute(
          name: 'RegisterCode',
          path: '/registerCode',
          builder: (context, params) => RegisterCodeWidget(
            fullname: params.getParam(
              'fullname',
              ParamType.String,
            ),
            fullnameAr: params.getParam(
              'fullnameAr',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'LoginCode',
          path: '/loginCode',
          builder: (context, params) => const LoginCodeWidget(),
        ),
        FFRoute(
          name: 'LoginSup',
          path: '/loginSup',
          builder: (context, params) => const LoginSupWidget(),
        ),
        FFRoute(
          name: 'S_AddBranches',
          path: '/sAddBranches',
          builder: (context, params) => SAddBranchesWidget(
            address: params.getParam(
              'address',
              ParamType.String,
            ),
            latlang: params.getParam(
              'latlang',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: 'SelectLanguage',
          path: '/selectLanguage',
          builder: (context, params) => const SelectLanguageWidget(),
        ),
        FFRoute(
          name: 'PaymentProfileCopy',
          path: '/paymentProfileCopy',
          builder: (context, params) => const PaymentProfileCopyWidget(),
        ),
        FFRoute(
          name: 'S_PaymentHistory',
          path: '/sPaymentHistory',
          builder: (context, params) => const SPaymentHistoryWidget(),
        ),
        FFRoute(
          name: 'RegisterWithOTPCopy',
          path: '/registerWithOTPCopy',
          builder: (context, params) => RegisterWithOTPCopyWidget(
            address: params.getParam(
              'address',
              ParamType.String,
            ),
            latlang: params.getParam(
              'latlang',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: 'S_AddAddressMap',
          path: '/sAddAddressMap',
          builder: (context, params) => const SAddAddressMapWidget(),
        ),
        FFRoute(
          name: 'RegisterMap',
          path: '/registerMap',
          builder: (context, params) => const RegisterMapWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/selectLanguage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
