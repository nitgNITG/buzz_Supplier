import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'fqjcrb41': {
      'en': 'Buzzer App',
      'ar': 'تطبيق الجرس',
    },
    'vei5qohy': {
      'en': '',
      'ar': '',
    },
    '2m6e7j3l': {
      'en': 'Enter Location',
      'ar': 'إدخال الدولة',
    },
    'zdt5jhzs': {
      'en': 'HOME',
      'ar': 'الرئيسية',
    },
    'nhdm1byx': {
      'en': 'Offers',
      'ar': 'عروض',
    },
    'sa24kvpa': {
      'en': 'Featured Products',
      'ar': 'منتجات مميزة',
    },
    '0frpluqc': {
      'en': 'Suppliers',
      'ar': 'الموردين',
    },
    'iw4x5b01': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    'xtak1kvc': {
      'en': 'Articles',
      'ar': 'مقالات',
    },
    'a9jjwfgi': {
      'en': 'Image Gallery',
      'ar': 'معرض الصور',
    },
    'tsr679v9': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'wktgkitg': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'hg8t5rzn': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
    },
    '230n0cot': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    '5ynr14ag': {
      'en': 'Contact Us',
      'ar': 'معلومات عن التطبيق',
    },
    'dx94ezex': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'v6lcms6b': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'v5vxbe35': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '00k3tkcs': {
      'en': 'Home',
      'ar': 'الرئيسية ',
    },
  },
  // signin
  {
    '1hhjf79g': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    '1g6ka8d3': {
      'en': 'Welcome! \n\n',
      'ar': 'مرحباً!',
    },
    'e3ljtbdr': {
      'en': 'Please enter your phone number to continue using our app.',
      'ar': 'الرجاء إدخال رقم هاتفك لمواصلة استخدام التطبيق لدينا.',
    },
    'ipddwd5d': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'w5ga5kax': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'wrngjetg': {
      'en': 'NEXT',
      'ar': 'التالي',
    },
    '9u4notgd': {
      'en': 'New Member? ',
      'ar': 'عضو جديد؟',
    },
    'n6tp8bup': {
      'en': 'Register',
      'ar': 'يسجل',
    },
    '2u83kzjq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vrkh2ma5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'co047w0z': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    '65hphi4a': {
      'en': 'T&C and ',
      'ar': 'الشروط والأحكام و',
    },
    'x4eusnc4': {
      'en': 'Privacy Policy.',
      'ar': 'سياسة الخصوصية.',
    },
    'rb642d6y': {
      'en': 'By tapping next you agree to   and ',
      'ar': 'من خلال النقر على التالي فإنك توافق على و',
    },
    'midmj9bj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Notifications
  {
    '5swv97az': {
      'en': 'Buzzer App',
      'ar': 'تطبيق الجرس',
    },
    '9lp89tkd': {
      'en': 'Track Your order',
      'ar': 'أتبع طلبك',
    },
    'ddo725ty': {
      'en': '',
      'ar': '',
    },
    'wp2dgz6v': {
      'en': 'NOTIFICATIONS',
      'ar': 'إشعارات',
    },
    '9v9t3x7e': {
      'en': 'Offers',
      'ar': 'عروض',
    },
    'ncvfl7no': {
      'en': 'Featured Products',
      'ar': 'منتجات مميزة',
    },
    'nf767y7q': {
      'en': 'Suppliers',
      'ar': 'الموردين',
    },
    'kmgpmaq1': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    'oo679sz7': {
      'en': 'Articles',
      'ar': 'مقالات',
    },
    'te4auray': {
      'en': 'Image Gallery',
      'ar': 'معرض الصور',
    },
    'c73i6p6d': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'ns2gtpts': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'gzrctx7i': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
    },
    'lpk4t9ga': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    '59xyhdvb': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    'u7a1d0re': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    '6r69o0cn': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'h602craq': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '36iqeqaj': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
  },
  // SupplierProducts
  {
    'tgz1qmn1': {
      'en': 'Featured',
      'ar': 'متميز',
    },
    'aip5uiip': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ProductDetail
  {
    'zmgg7131': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    '2edsvs0z': {
      'en': '  ',
      'ar': '',
    },
    'h67i1gu5': {
      'en': 'SAR 79',
      'ar': '79 ريال سعودي',
    },
    'wd5m46aa': {
      'en': 'Supplier',
      'ar': 'المورد',
    },
    'k10mpkan': {
      'en': 'Rate Supplier',
      'ar': 'معدل المورد',
    },
    'hu4i88yk': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'romgapa7': {
      'en': 'Customer Reviews',
      'ar': 'آراء العملاء',
    },
    'enahbfyn': {
      'en': 'Rate Product',
      'ar': 'تقييم المنتج',
    },
    'oks8tuls': {
      'en': 'Product Detail',
      'ar': 'تفاصيل المنتج',
    },
    'tklfpouu': {
      'en': 'ADD TO BASKEt',
      'ar': 'اضف الى السلة',
    },
    '5qvey769': {
      'en': 'ADD TO BASKET',
      'ar': 'اضف الى السلة',
    },
    'tl2urtnx': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Basket
  {
    '4v87ogla': {
      'en': 'Basket',
      'ar': 'السلة',
    },
    'uzaab18l': {
      'en': 'View Details',
      'ar': 'عرض التفاصيل',
    },
    'yv5xak4q': {
      'en': 'Price: ',
      'ar': 'سعر:',
    },
    'ktnxvrng': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'u28v2mp8': {
      'en': 'Quantity: ',
      'ar': 'كمية:',
    },
    'duiq6fgq': {
      'en': 'Subtotal: ',
      'ar': 'المجموع الفرعي:',
    },
    'gzsznh0b': {
      'en': ' SAR ',
      'ar': 'ريال سعودي ',
    },
    'h2z5i6ym': {
      'en': 'Order Summary',
      'ar': 'ملخص الطلب',
    },
    'n5ovw2tk': {
      'en': 'Quantity: ',
      'ar': 'كمية:',
    },
    'fhxf46d1': {
      'en': 'x',
      'ar': 'س',
    },
    'ff07soef': {
      'en': 'Price: ',
      'ar': 'سعر:',
    },
    'fk7ear0z': {
      'en': '  SAR ',
      'ar': 'ريال سعودي ',
    },
    'ufq5ttzl': {
      'en': 'Basket Is Empty',
      'ar': 'السلة فارغة',
    },
    '8x61nmsp': {
      'en': 'PROCEED TO CHECKOUT',
      'ar': 'الاستمرار في الدفع ',
    },
    'c10mhn0x': {
      'en': 'BACK TO HOME ',
      'ar': 'العودة إلى الرئيسية',
    },
    'mfk8059r': {
      'en': 'Home',
      'ar': 'الرئيسية ',
    },
  },
  // Checkout
  {
    'm76e64ku': {
      'en': 'Pickup Location',
      'ar': 'اختر موقعا',
    },
    'rvnbiigq': {
      'en': 'Payment Method',
      'ar': 'طريقة الدفع او السداد',
    },
    '6ynx20hy': {
      'en': 'Cash on Pickup',
      'ar': 'الدفع عند الإستلام',
    },
    '2si2tbw5': {
      'en': 'PayPal',
      'ar': 'باي بال',
    },
    '0nmuh7nz': {
      'en': 'Credit Card',
      'ar': 'بطاقة إئتمان',
    },
    'uu3m70zz': {
      'en': 'Order Items',
      'ar': 'طلب بضاعة',
    },
    '0qh9x9fn': {
      'en': 'View Details',
      'ar': 'عرض التفاصيل',
    },
    'nhlc58qp': {
      'en': 'Price: ',
      'ar': 'سعر:',
    },
    '2y3jsaau': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'l9xtvfm0': {
      'en': 'Quantity: ',
      'ar': 'كمية:',
    },
    'w0ahftx0': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'z2oduc0r': {
      'en': 'Subtotal: ',
      'ar': 'المجموع الفرعي:',
    },
    '6qqpz5on': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'yahg0mug': {
      'en': 'Order Summary',
      'ar': 'ملخص الطلب',
    },
    'o7bnda9o': {
      'en': 'Quantity: ',
      'ar': 'كمية:',
    },
    '1o2ctcpm': {
      'en': 'x',
      'ar': 'x',
    },
    't4raj2fs': {
      'en': 'Price: ',
      'ar': 'سعر:',
    },
    'dvckp2ao': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    '74hmleyd': {
      'en': 'PLACE ORDER',
      'ar': 'ضع طلبك',
    },
    '73gvj1x4': {
      'en': 'Checkout',
      'ar': 'الدفع',
    },
    'sobj183m': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // homeAfterOrder
  {
    'fqa8tg1v': {
      'en': 'Buzzer App',
      'ar': 'تطبيق الجرس',
    },
    'yrxyukuk': {
      'en': 'Track Your order',
      'ar': 'أتبع طلبك',
    },
    'a4nv9gr9': {
      'en': '',
      'ar': '',
    },
    '1hz2icjb': {
      'en': 'Main Market Riyadh, KSA',
      'ar': 'السوق الرئيسي الرياض، المملكة العربية السعودية',
    },
    '9wgqccqh': {
      'en': 'Status: ',
      'ar': 'حالة:',
    },
    'qpy8s9xa': {
      'en': 'Main Market Riyadh, KSA',
      'ar': 'السوق الرئيسي الرياض، المملكة العربية السعودية',
    },
    'm0r18ekw': {
      'en': 'Status: ',
      'ar': 'حالة:',
    },
    'hfhw4s39': {
      'en': 'Offers',
      'ar': 'عروض',
    },
    'gbua9glv': {
      'en': 'Featured Products',
      'ar': 'منتجات مميزة',
    },
    '2i3ws8kg': {
      'en': 'Suppliers',
      'ar': 'الموردين',
    },
    'hz7gydej': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    '3caqpnn0': {
      'en': 'Supplier Products',
      'ar': 'منتجات الموردين',
    },
    '2hkl5975': {
      'en': 'Articles',
      'ar': 'مقالات',
    },
    'mxse7xfd': {
      'en': 'Image Gallery',
      'ar': 'معرض الصور',
    },
    'yegons8h': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'mzz71v0w': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'myow7w3b': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
    },
    'e4g9wp0z': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    '606v4otm': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    'x2m16q91': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'yjy880eg': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    '04qbg0qp': {
      'en': 'REGISTER AS SUPPLIER',
      'ar': 'سجل كمورد',
    },
    'z4aoc5gu': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    'apd7o9vf': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // profile
  {
    '5axci8ij': {
      'en': 'Buzzer App',
      'ar': 'تطبيق الجرس',
    },
    'encih338': {
      'en': 'My Information',
      'ar': 'معلوماتي',
    },
    '0x0d9o8e': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'mrflsmy9': {
      'en': '',
      'ar': '',
    },
    'vzwa4r68': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'v0hdljro': {
      'en': 'Manage Account',
      'ar': 'إدارة الحساب',
    },
    '1dyjseng': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'p8pispdf': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    'ek9t7al8': {
      'en': 'Manage Cart',
      'ar': 'إدارة العربة',
    },
    'r4b2cnka': {
      'en': 'PROFILE',
      'ar': 'حساب تعريفي',
    },
    'uas2ang0': {
      'en': 'Offers',
      'ar': 'عروض',
    },
    '8el7agtq': {
      'en': 'Featured Products',
      'ar': 'منتجات مميزة',
    },
    'ccdql7pw': {
      'en': 'Suppliers',
      'ar': 'الموردين',
    },
    'wwjxaqn3': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    'qzftjkoi': {
      'en': 'Articles',
      'ar': 'مقالات',
    },
    '4ykz4iha': {
      'en': 'Image Gallery',
      'ar': 'معرض الصور',
    },
    'mjjzpxyh': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'q895if50': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    '1sp1nrs6': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
    },
    '3ti9d5zq': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    '355mhtsu': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    'jdwz01kx': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'tu5ngbh9': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'sxz0zafg': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    'pozn93kw': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // EditProfile
  {
    'ecom5am4': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'f4pfd51t': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'awrjxmws': {
      'en': 'Click to Enter Name',
      'ar': 'انقر لإدخال الاسم',
    },
    'e67jdewj': {
      'en': 'Click To Enter Number',
      'ar': 'انقر لإدخال الرقم',
    },
    'ez4dp333': {
      'en': 'UPDATE',
      'ar': 'تحديث',
    },
    'ci24dnk1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ql704o74': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1ibgcbru': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'en7he967': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm4jsp4j8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // myOrder
  {
    'wxism2s6': {
      'en': 'My Orders',
      'ar': 'طلباتي',
    },
    '98otgbly': {
      'en': 'Sort',
      'ar': 'نوع',
    },
    'v8o4gcwf': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '2uypva87': {
      'en': 'Pending',
      'ar': 'قيد الانتظار',
    },
    'vxkc93e2': {
      'en': 'Accepted',
      'ar': 'قبلت',
    },
    'kty4ox1k': {
      'en': 'Completed',
      'ar': 'مكتمل',
    },
    'knnmcp2d': {
      'en': 'Cancelled',
      'ar': 'ألغيت',
    },
    'vr5y12qw': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'mad2h6d8': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'h36a4fqb': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'p1gjm14e': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'yyq82kbw': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    '1fuoeme3': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    '9x5ggue7': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'zo9aln4l': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // OrderDetail
  {
    '0adbufj4': {
      'en': 'Order Detail',
      'ar': 'تفاصيل الطلب',
    },
    'l674rtiu': {
      'en': 'Time: ',
      'ar': 'وقت:',
    },
    'ij8uwewl': {
      'en': 'Status: ',
      'ar': 'حالة:',
    },
    'chtsubkb': {
      'en': 'Payment Method',
      'ar': 'طريقة الدفع او السداد',
    },
    's19s6hws': {
      'en': 'Pickup Location',
      'ar': 'اختر موقعا',
    },
    '99llpqs3': {
      'en': 'Order Items',
      'ar': 'طلب بضاعة',
    },
    'behz6yht': {
      'en': 'View Details',
      'ar': 'عرض التفاصيل',
    },
    'tw8rcftp': {
      'en': 'Price: ',
      'ar': 'سعر:',
    },
    '0ktpikqk': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'on37xiyo': {
      'en': 'Quantity: ',
      'ar': 'كمية:',
    },
    'eyiwhdu1': {
      'en': 'x ',
      'ar': 'س',
    },
    'k8rq4ki4': {
      'en': 'Subtotal: ',
      'ar': 'المجموع الفرعي:',
    },
    'jyezk3wi': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    '75gdmie9': {
      'en': 'Order Summary',
      'ar': 'ملخص الطلب',
    },
    'vf3rooeg': {
      'en': 'Price: ',
      'ar': 'سعر:',
    },
    'jbidad9w': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'nunifl43': {
      'en': 'Quantity: ',
      'ar': 'كمية:',
    },
    'xxvpo3wi': {
      'en': 'x ',
      'ar': 'س',
    },
    'kudnbwn8': {
      'en': 'Subtotal: ',
      'ar': 'المجموع الفرعي:',
    },
    'vzc91x82': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    '3mxd8rlk': {
      'en': 'CANCEL ORDER',
      'ar': 'الغاء الطلب',
    },
    'sduu8fkq': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Offer
  {
    'k3aiotz3': {
      'en': 'Featured',
      'ar': 'متميز',
    },
    '540y0q9a': {
      'en': 'Offers',
      'ar': 'عروض',
    },
    'ucqc3ds6': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // FeaturedProducts
  {
    '5dm6s5ed': {
      'en': 'Featured',
      'ar': 'متميز',
    },
    '4msxlgaf': {
      'en': 'Featured Products',
      'ar': 'منتجات مميزة',
    },
    'wotb7sht': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Suppliers
  {
    'q7cqav93': {
      'en': 'Suppliers',
      'ar': 'الموردين',
    },
    'rku4tc56': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Articles
  {
    '0x499pid': {
      'en': '',
      'ar': '',
    },
    'tgjryzc3': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ArticlesDetails
  {
    'hdgw8i5v': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ImageGallery
  {
    'etjk0inx': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // FAQs
  {
    'zdniysso': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // settings
  {
    '3jlhoefy': {
      'en': 'Language',
      'ar': 'اللغة',
    },
    'i2pea2z4': {
      'en': 'English',
      'ar': 'إنجليزي',
    },
    'v7ud4jmy': {
      'en': 'Arabic',
      'ar': 'عربي',
    },
    'glqsmf4f': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ChangePassword
  {
    '5rivuse4': {
      'en': 'Update Now!',
      'ar': 'تحديث الآن!',
    },
    '4edgizk8': {
      'en': 'Current Password',
      'ar': 'كلمة المرور الحالية',
    },
    '2v0zxsgh': {
      'en': 'New Password',
      'ar': 'كلمة المرور الجديدة',
    },
    'bpt2ipkg': {
      'en': 'Confirm New Password',
      'ar': 'تأكيد كلمة المرور الجديدة',
    },
    '52skwhye': {
      'en': 'UPDATE PASSWORD',
      'ar': 'تعديل كلمة المرور',
    },
    '72pas9c4': {
      'en': 'Change Password',
      'ar': 'تغير كلمة المرور ',
    },
    'hbo3itet': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '82zkj79f': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7jx7aeb9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jdnhkaus': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'n1k82m55': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5jqh9ijk': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vte2kepo': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AboutUs
  {
    'w37ekdjc': {
      'en': '\n',
      'ar': '',
    },
    'kxw6374h': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    'u1jankn2': {
      'en': 'Main Market, AI-Ain,KSA',
      'ar': 'السوق الرئيسي، العين، المملكة العربية السعودية',
    },
    '83nncj7x': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MissionVision
  {
    '779lmhjk': {
      'en': '\n',
      'ar': '',
    },
    'jvqlpqhb': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    'ga9qmsa5': {
      'en': '\n',
      'ar': '',
    },
    'h0a90nvw': {
      'en': 'Mission & Vision',
      'ar': '',
    },
    'gz63p3sc': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ContactUs
  {
    'aewcq99w': {
      'en': 'Get in Touch With Us!',
      'ar': 'ابق على تواصل معنا!',
    },
    'z5hm8ep1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'z8h59i0u': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'alt810g8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jctht2bk': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ci7sl2ig': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'y0hj4ill': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'azdw0yna': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'n8ptwlpc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hk5mllbj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PrivacyPolicy
  {
    'th5fwoxt': {
      'en': '\n',
      'ar': '',
    },
    'twd6rjtb': {
      'en': 'Mission & Vision',
      'ar': 'المهمة والرؤية',
    },
    '0jwrc9qg': {
      'en': '\n',
      'ar': '',
    },
    'q5scebye': {
      'en': 'Mission & Vision',
      'ar': '',
    },
    'vsrhv44t': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // TermsConditions
  {
    '8puiuamw': {
      'en': '\n',
      'ar': '',
    },
    '1el1yv97': {
      'en': 'Mission & Vision',
      'ar': 'المهمة و الرؤية',
    },
    '9gwsyewk': {
      'en': '\n',
      'ar': '',
    },
    'cfa65egl': {
      'en': 'Mission & Vision',
      'ar': '',
    },
    'u4swpuei': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // test
  {
    '3ubt3f1j': {
      'en': 'Product Name ',
      'ar': 'اسم المنتج',
    },
    'kmuala0a': {
      'en': 'please name ',
      'ar': 'من فضلك الاسم',
    },
    'n25uzx51': {
      'en': 'price ',
      'ar': 'سعر',
    },
    '93f3di77': {
      'en': 'Type ',
      'ar': 'يكتب',
    },
    'nivimnnq': {
      'en': 'Dec',
      'ar': 'ديسمبر',
    },
    '72dhngaa': {
      'en': 'Button',
      'ar': 'زر',
    },
    'aqpjqwat': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupplierRegister
  {
    'pg24aw5v': {
      'en': 'Register Now!',
      'ar': 'سجل الآن!',
    },
    '1p8rclj3': {
      'en': 'Restaurant',
      'ar': 'مطعم',
    },
    'z533km0u': {
      'en': 'Cafe',
      'ar': 'كافيه',
    },
    '80h0f1sn': {
      'en': 'Type',
      'ar': 'النوع',
    },
    'p0a04kq4': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '8ilvulrd': {
      'en': '',
      'ar': '',
    },
    'f5esfyab': {
      'en': 'FullName*',
      'ar': 'الاسم الكامل*',
    },
    '8zg7us6v': {
      'en': '',
      'ar': '',
    },
    '2dsq87ud': {
      'en': 'Email*',
      'ar': 'البريد إلالكتروني*',
    },
    'diyp9mef': {
      'en': '',
      'ar': '',
    },
    'ejvw08so': {
      'en': 'Phone Number*',
      'ar': 'رقم التليفون*',
    },
    'doviuv9f': {
      'en': '',
      'ar': '',
    },
    'frvzdm00': {
      'en': 'Password*',
      'ar': 'كلمة المرور*',
    },
    'g0ne040t': {
      'en': '',
      'ar': '',
    },
    'sizkeja1': {
      'en': 'Confirm Password*',
      'ar': 'تأكيد كلمة المرور*',
    },
    'gvho3fex': {
      'en': 'Trade Licsense',
      'ar': 'رخصة تجارية',
    },
    'z682lvls': {
      'en': 'Display Picture',
      'ar': 'عرض الصورة',
    },
    'dnotqcdj': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'pa1fazhp': {
      'en': 'T&C',
      'ar': 'الشروط و الأحكام',
    },
    'kvi96cf2': {
      'en': ' and ',
      'ar': 'و',
    },
    'x5i3e99p': {
      'en': 'Privacy Policy. ',
      'ar': 'سياسة الخصوصية.',
    },
    '7104le2t': {
      'en': 'REGISTER',
      'ar': 'تسجيل',
    },
    'ezv0bhn9': {
      'en': 'Already Have An Account ? ',
      'ar': 'هل لديك حساب ؟',
    },
    'jkuz5hs6': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    '8badtthf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'wsjfs1ic': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x91qslue': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'k9iy34kj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'q5vpgpnh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yy5lysxd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'v0vqkzcv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1tykmiiy': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7jsuyn5o': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hpqh8cwn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kvta67c4': {
      'en': 'Register As Café/Restaurant',
      'ar': 'سجل كمقهى/مطعم',
    },
    '2d1i9e27': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupplierHomePage
  {
    'vfcq6ccj': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // SupplierAddProducts
  {
    'njvur4i0': {
      'en': '',
      'ar': '',
    },
    'as974l5q': {
      'en': '',
      'ar': '',
    },
    'iezd0m41': {
      'en': '',
      'ar': '',
    },
    'tjcqjfzn': {
      'en': 'SAR',
      'ar': 'ريال ',
    },
    '9tsxl8e3': {
      'en': '',
      'ar': '',
    },
    'dyc0qr0o': {
      'en': '',
      'ar': '',
    },
    'otbc06qk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '4y4l2krt': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'gne4cxbz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2ngbc3cv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'cdh502e1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'wxzmkgfd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '5vqb3p66': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'q6k6rp10': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'fadrftjt': {
      'en': 'Home',
      'ar': 'الرئيسية ',
    },
  },
  // NotificationPage
  {
    'w7noysk3': {
      'en': 'Buzzer Supplier',
      'ar': 'Buzzer Supplier',
    },
    '0acepxea': {
      'en': 'Articles',
      'ar': 'المقالات',
    },
    'lok3icn4': {
      'en': 'Image Gallery',
      'ar': 'معرض الصور',
    },
    'ho3w83hm': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'c24j4te9': {
      'en': 'Settings',
      'ar': 'الإعدادات',
    },
    '4zko748w': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
    },
    't8xp9mao': {
      'en': 'Mission & Vision',
      'ar': 'المهمة و الرؤية',
    },
    'm2nfpuun': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    'wen51qaj': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'hsk9op2r': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'e69q2ko5': {
      'en': 'LOGOUT',
      'ar': 'تسجيل الخروج',
    },
    'u67ggzi7': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupplierProfile
  {
    'ojryqdw0': {
      'en': 'Rating',
      'ar': 'التقييم',
    },
    '0i8vkhvc': {
      'en': '',
      'ar': '',
    },
    '96hveyij': {
      'en': 'Category',
      'ar': 'الفئة',
    },
    't4f5jjw2': {
      'en': '',
      'ar': '',
    },
    '4jbdi7ei': {
      'en': 'Supplier Name',
      'ar': 'اسم المورد',
    },
    'xaxfo9m9': {
      'en': '',
      'ar': '',
    },
    '5cg7hsf4': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'ka9s9gxr': {
      'en': '',
      'ar': '',
    },
    'vdm69eiv': {
      'en': 'Address',
      'ar': 'العنوان',
    },
    'amh5cltn': {
      'en': '',
      'ar': '',
    },
    'g4u5xtsc': {
      'en': 'Trade License',
      'ar': 'الرخصة التجارية',
    },
    '9umjgyh1': {
      'en': 'Articles',
      'ar': 'المقالات',
    },
    'pf54is54': {
      'en': 'Add Branches',
      'ar': 'إضافة فروع',
    },
    '2086i2gx': {
      'en': 'Image Gallery',
      'ar': 'معرض الصور',
    },
    '1dicn3rf': {
      'en': 'FAQs',
      'ar': 'الأسئلة الشائعة',
    },
    'kvcbleig': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
    },
    'tnwaodvj': {
      'en': 'Mission & Vision',
      'ar': 'المهمة و الرؤية',
    },
    '3urh52f2': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
    },
    '1towzrz9': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    '1xo8k48s': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الأحكام',
    },
    'xv5dqywl': {
      'en': 'Settings',
      'ar': 'الإعدادات',
    },
    'r7763i7g': {
      'en': 'LOGOUT',
      'ar': 'تسجيل الخروج',
    },
    '9qohc5mg': {
      'en': 'Home',
      'ar': 'الرئيسية ',
    },
  },
  // SupplierEditProfile
  {
    'pjgy0ckr': {
      'en': '',
      'ar': '',
    },
    '41kqg6vl': {
      'en': '',
      'ar': '',
    },
    'xo5i8q3w': {
      'en': '',
      'ar': '',
    },
    '0wz1uwc2': {
      'en': 'Change Address',
      'ar': 'تغيير العنوان',
    },
    '9ndsm6o4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '78a7rqsx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'smx3o47a': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5dq5r1vi': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'oopg477e': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jtzmivez': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'sxqong9m': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2ckjlb6w': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm3m21glv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gegtuyas': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6gsdxo34': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'kokafanu': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3zqmijae': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupplierMyOrder
  {
    'jm0xo9li': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    '11c0e2ba': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    'd41h2h27': {
      'en': 'Order Time: ',
      'ar': 'وقت الطلب:',
    },
    '9tgh10il': {
      'en': 'Total Products: ',
      'ar': 'عدد المنتجات:',
    },
    '3a3pngkt': {
      'en': 'Total: ',
      'ar': 'المجموع:',
    },
    'br9d6u3e': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    'stbytfai': {
      'en': 'Order Time: ',
      'ar': 'وقت الطلب:',
    },
    '49klrbpr': {
      'en': 'Total Products: ',
      'ar': 'عدد المنتجات:',
    },
    'z37wh6lw': {
      'en': 'Total: ',
      'ar': 'المجموع:',
    },
    'tdnmp1ao': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    'd7xjv3ye': {
      'en': 'Order Time: ',
      'ar': 'وقت الطلب:',
    },
    '5mu2t8ad': {
      'en': 'Total Products: ',
      'ar': 'عدد المنتجات:',
    },
    'jwiiet9y': {
      'en': 'Total: ',
      'ar': 'المجموع:',
    },
    'pcbswajs': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    'ybs8hqu6': {
      'en': 'Order Time: ',
      'ar': 'وقت الطلب:',
    },
    '4yqivq93': {
      'en': 'Total Products: ',
      'ar': 'عدد المنتجات:',
    },
    '3giy4jpz': {
      'en': 'Total: ',
      'ar': 'المجموع:',
    },
    'soan6hvl': {
      'en': 'Order #',
      'ar': '',
    },
    't2ju7549': {
      'en': 'Order Time: ',
      'ar': '',
    },
    'pw10y6hr': {
      'en': 'Total Products: ',
      'ar': '',
    },
    'nfxpliy1': {
      'en': 'Total: ',
      'ar': '',
    },
    'x2xu6l46': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    'htwggap0': {
      'en': 'Order Time: ',
      'ar': 'وقت الطلب:',
    },
    'lzlz2w5b': {
      'en': 'Total Products: ',
      'ar': 'إجمالي المنتجات:',
    },
    'bcqts0ud': {
      'en': 'Total: ',
      'ar': 'المجموع:',
    },
    'cw74tzzl': {
      'en': 'Sort',
      'ar': 'ترتيب',
    },
    'hsja4pwk': {
      'en': 'All',
      'ar': 'الكل',
    },
    'rtlwop0h': {
      'en': 'Pending',
      'ar': 'قيد الانتظار',
    },
    'i9pkfx5d': {
      'en': 'Accepted',
      'ar': 'قبلت',
    },
    '476ikqyn': {
      'en': 'Ready',
      'ar': 'جاهز',
    },
    'awria7xb': {
      'en': 'Completed',
      'ar': 'مكتمل',
    },
    'ot8ik1bn': {
      'en': 'Cancelled',
      'ar': 'ألغيت',
    },
    'w6di8mtk': {
      'en': 'Ready But Not Recived',
      'ar': 'جاهز و غير مستلم',
    },
    'zo9gbtb7': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'p617h1mb': {
      'en': 'Search for an item...',
      'ar': 'البحث عن منتج',
    },
    'bp1w1u70': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SupplierOrderDetails
  {
    '0f4tivkw': {
      'en': 'Cash on Pickup',
      'ar': '',
    },
    '8b62g88j': {
      'en': '× ',
      'ar': '×',
    },
    '017z7s0p': {
      'en': '× ',
      'ar': '×',
    },
    '00ln46fr': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // ManageOffers
  {
    'svicd8wb': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AddNewOffer
  {
    'mvjhnh64': {
      'en': 'Add New Offer',
      'ar': 'إضافة عرض جديد',
    },
    'xf9ulh77': {
      'en': 'Upload Media',
      'ar': 'تحميل الوسائط',
    },
    'tvonttel': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'ml3520fa': {
      'en': '',
      'ar': '',
    },
    'a93wor0p': {
      'en': 'Product Name',
      'ar': 'اسم المنتج',
    },
    'yofk0bh6': {
      'en': '',
      'ar': '',
    },
    'yevomkkb': {
      'en': 'Price',
      'ar': 'السعر',
    },
    'wwthxnjo': {
      'en': '',
      'ar': '',
    },
    'fjvvfwb9': {
      'en': 'Offer Percertage',
      'ar': 'نسبة العرض',
    },
    'eyf26qeg': {
      'en': '',
      'ar': '',
    },
    'aw3wez1k': {
      'en': 'Discounted Price',
      'ar': 'السعر المخفض',
    },
    'crdyaqlu': {
      'en': '',
      'ar': '',
    },
    '7klpzmkk': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'rtssx0dt': {
      'en': 'Offer Expiration  ',
      'ar': 'انتهاء العرض ',
    },
    'tsdoj1wc': {
      'en': 'Offer Expiration *',
      'ar': 'انتهاء العرض *',
    },
    'vds1985h': {
      'en': 'Set',
      'ar': 'تعيين',
    },
    '952v1uxs': {
      'en': 'SEND REQUEST TO ADMIN',
      'ar': 'إرسال الطلب إلى المشرف',
    },
    'naxftsyv': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SelectPackges
  {
    'zx25q34u': {
      'en': 'Select Package',
      'ar': 'حدد الحزمة',
    },
    '3ex98hxs': {
      'en': 'BUY NOW',
      'ar': 'اشتري الآن',
    },
    'czkuzpp5': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ManageProducts
  {
    '4o6zcoc5': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // SupplierFeaturedProducts
  {
    'tgvukite': {
      'en': 'FEATURE NEW PRODUCT',
      'ar': 'تمييز منتج جديد',
    },
    'kx7069b7': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // SelectProducts
  {
    '14lp0dem': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // PaymentProfile
  {
    'an7688ux': {
      'en': '',
      'ar': '',
    },
    'y05i1o3n': {
      'en': 'Client ID',
      'ar': 'معرف العميل',
    },
    'fwctv8ww': {
      'en': '',
      'ar': '',
    },
    'yku8kixv': {
      'en': 'Secret',
      'ar': 'سر',
    },
    'miofrner': {
      'en': 'SAVE',
      'ar': 'يحفظ',
    },
    'dgq7de9l': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RatingReviews
  {
    'p3msx3lx': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // EditProduct
  {
    'hvfi95di': {
      'en': '',
      'ar': '',
    },
    '62jahewp': {
      'en': '',
      'ar': '',
    },
    '6yh7a4vg': {
      'en': '',
      'ar': '',
    },
    'r9od9ys7': {
      'en': '',
      'ar': '',
    },
    '2yxe6ewg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vptga0u3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'xh8afo9q': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'htjo8id0': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'prz5c2ir': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '399ozlme': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8uj6j0hw': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // LogInAsSupplier
  {
    'wnq9djdw': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    'fe8ixlsp': {
      'en': 'Welcome!',
      'ar': 'مرحباً!',
    },
    '651e9mqt': {
      'en': 'Please Enter Your Email and Password to Continue Using Our App.',
      'ar': 'يرجى إدخال بريدك الإلكتروني وكلمة المرور لمواصلة استخدام تطبيقنا.',
    },
    'de80lipw': {
      'en': 'Email',
      'ar': 'البريد إلالكتروني',
    },
    'vse3ddf9': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'jsbaf298': {
      'en': 'NEXT',
      'ar': 'التالي',
    },
    'j66ccq82': {
      'en': 'New Member? ',
      'ar': 'عضو جديد؟',
    },
    'n16038t2': {
      'en': 'Register',
      'ar': 'تسجيل',
    },
    '06ljnb8w': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'ejd2fjee': {
      'en': ' T&C ',
      'ar': 'الشروط و الأحكام',
    },
    'lj6dussr': {
      'en': 'and ',
      'ar': 'و',
    },
    '9ofbcc6h': {
      'en': 'Privacy Policy.',
      'ar': 'سياسة الخصوصية.',
    },
    '4hikkihw': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LoginCodeSupplier
  {
    '8z89kbci': {
      'en': 'Login Code',
      'ar': 'رمز تسجيل الدخول',
    },
    'yn9nttdo': {
      'en': 'Login by OTP',
      'ar': 'تسجيل الدخول عن طريق OTP',
    },
    '5j58eyh9': {
      'en': 'Enter the authentication code we sent at  ',
      'ar': 'أدخل رمز التوثيق الذي أرسلناه على',
    },
    '3ni3jaic': {
      'en': 'Enter the authentication code we sent at ',
      'ar': 'أدخل رمز التوثيق الذي أرسلناه على',
    },
    'xlb2flfw': {
      'en': 'Login Code',
      'ar': 'رمز تسجيل الدخول',
    },
    'cee0q54j': {
      'en': 'SUBMIT',
      'ar': 'يُقدِّم',
    },
    'wz0adtlj': {
      'en': 'Don’t receive the code? ',
      'ar': 'لا تتلقى الرمز؟',
    },
    'y8966i0p': {
      'en': 'Resend',
      'ar': 'إعادة إرسال',
    },
    'z405nyaj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SelectUser
  {
    'ma9xyq1j': {
      'en': 'Register',
      'ar': 'يسجل',
    },
    'o2bjm5xa': {
      'en': 'REGISTER AS USER',
      'ar': 'سجل كمستخدم',
    },
    'hi1jghgx': {
      'en': 'REGISTER AS SUPPLIER',
      'ar': 'سجل كمورد',
    },
    '9tbhecnf': {
      'en': 'CONTINUE',
      'ar': 'يكمل',
    },
    'szbmdtv3': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RegisterUser
  {
    'r7qtl4iv': {
      'en': 'Register Now!',
      'ar': 'سجل الان!',
    },
    '3kb6l9m4': {
      'en': '',
      'ar': '',
    },
    'ya339be6': {
      'en': 'FullName*',
      'ar': 'الاسم الكامل*',
    },
    'z6ob9c4j': {
      'en': '',
      'ar': '',
    },
    'k93x59qn': {
      'en': 'Email*',
      'ar': 'بريد إلكتروني*',
    },
    '2mhfr1pd': {
      'en': '',
      'ar': '',
    },
    '6ta4ecbv': {
      'en': 'Phone Number*',
      'ar': 'رقم التليفون*',
    },
    '055j96aq': {
      'en': '',
      'ar': '',
    },
    '2vx5no35': {
      'en': 'Password*',
      'ar': 'كلمة المرور*',
    },
    'i45d2yy1': {
      'en': '',
      'ar': '',
    },
    '6diiglhg': {
      'en': 'Confirm Password*',
      'ar': 'تأكيد كلمة المرور*',
    },
    'tv2nfabd': {
      'en': '',
      'ar': '',
    },
    'dko7vh6q': {
      'en': 'City*',
      'ar': 'مدينة*',
    },
    '65buagpx': {
      'en': 'Display Picture',
      'ar': 'عرض الصورة',
    },
    'mmwqeecv': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'aepuxorc': {
      'en': 'T&C',
      'ar': 'الشروط والأحكام',
    },
    'yuut1lhy': {
      'en': ' and ',
      'ar': 'و',
    },
    'nkgkg093': {
      'en': 'Privacy Policy. ',
      'ar': 'سياسة الخصوصية.',
    },
    '8omdgbx7': {
      'en': 'REGISTER',
      'ar': 'يسجل',
    },
    'ol2an2dn': {
      'en': 'Already Have An Account ? ',
      'ar': 'هل لديك حساب ؟',
    },
    'z95pgvfo': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'o9ab1ctu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '88wpg16g': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '724y4f2m': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2fw65sfb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'thnqwob3': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9dhzuzlc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ib2rqzvd': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'btr0c73n': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'db8kx9kx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'lkmwjt67': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wg4bxbk1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xmq29vvh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'd2hiy3c7': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'uje1ovhi': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'npozvz00': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // DeletedProductsPage
  {
    'fe177dwq': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // test2
  {
    'r9ghmoi9': {
      'en': 'Order #',
      'ar': 'طلب #',
    },
    'an8qit1y': {
      'en': 'SAR ',
      'ar': 'ريال سعودي',
    },
    'xlu9k2op': {
      'en': 'Total: ',
      'ar': 'المجموع:',
    },
    'tv3llbeq': {
      'en': 'Manage Orders',
      'ar': 'إدارة الطلبات',
    },
    'eo2pobwd': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // OrderDetails
  {
    '197ldp1b': {
      'en': 'Order Details',
      'ar': 'تفاصيل الطلب',
    },
    'dytlh7f6': {
      'en': 'Status: ',
      'ar': 'الحالة:',
    },
    'a6effgz2': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // RegisterWithPhone
  {
    'qlbkjdhp': {
      'en': 'Register Now!',
      'ar': 'سجل الآن!',
    },
    'skwrff79': {
      'en': 'Restaurant',
      'ar': 'مطعم',
    },
    'pvnjqmrf': {
      'en': 'Cafe',
      'ar': 'كافيه',
    },
    'kv94u974': {
      'en': 'Type',
      'ar': 'النوع',
    },
    'exdv8w89': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'igx7ojll': {
      'en': '',
      'ar': '',
    },
    'bzn5e5p3': {
      'en': 'Place Name*',
      'ar': 'الاسم*',
    },
    '65molw7p': {
      'en': '',
      'ar': '',
    },
    'utc4qmtu': {
      'en': 'Email*',
      'ar': 'البريد الإلكتروني*',
    },
    '1ct30g8d': {
      'en': 'Enter Your Phone',
      'ar': 'أدخل هاتفك',
    },
    '4imz40tf': {
      'en': '',
      'ar': '',
    },
    '2gvfduk2': {
      'en': 'Password*',
      'ar': 'كلمة المرور*',
    },
    'lyjpvalu': {
      'en': '',
      'ar': '',
    },
    'poj9fqnd': {
      'en': 'Confirm Password*',
      'ar': 'تأكيد كلمة المرور*',
    },
    's2zpjenx': {
      'en': 'Trade Licsense',
      'ar': 'الرخصة التجارية',
    },
    'lopr5gki': {
      'en': 'Display Picture',
      'ar': 'عرض الصورة',
    },
    'd4zn1weh': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'lu0efs6u': {
      'en': 'T&C',
      'ar': 'الشروط والأحكام',
    },
    'oj5a9acf': {
      'en': ' and ',
      'ar': 'و',
    },
    '1w7sntvg': {
      'en': 'Privacy Policy.',
      'ar': 'سياسة الخصوصية',
    },
    'nhnaqc37': {
      'en': 'REGISTER',
      'ar': 'تسجيل',
    },
    '8zep7uvg': {
      'en': 'Already Have An Account ? ',
      'ar': 'هل لديك حساب ؟',
    },
    'poxiyxpl': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'gxdez3t5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vhx0nrxp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'rynl3ffc': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qbgl072c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'w3x0ieqn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5qjzr1re': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ja3kjgha': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '11waga63': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'mqcohwpb': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'spou6vls': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vqz0owan': {
      'en': 'Register As Café/Restaurant',
      'ar': 'إضافة كافيه أو مطعم',
    },
    '0es49fdb': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LoginWithPhone
  {
    'z0cnr8jb': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    'kkmfmbg8': {
      'en': 'Welcome!',
      'ar': 'مرحباً!',
    },
    '8c1x30qf': {
      'en': 'Please Enter Your Phone and Password to Continue Using Our App.',
      'ar': 'يرجى إدخال هاتفك وكلمة المرور لمواصلة استخدام تطبيقنا.',
    },
    'f8u2w4l4': {
      'en': '+966',
      'ar': '+966',
    },
    'urbq70hj': {
      'en': 'Option 1',
      'ar': '',
    },
    '25cfjoo1': {
      'en': '+966',
      'ar': '+966',
    },
    'lyszbufi': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'aeiuvuqq': {
      'en': 'Enter Your Phone',
      'ar': 'رقم الهاتف',
    },
    '21374dw5': {
      'en': 'Enter Your Password',
      'ar': 'ادخل رقمك السري',
    },
    'fk2jn5pk': {
      'en': 'LOGIN',
      'ar': 'تسجيل الدخول',
    },
    'vgmqd8my': {
      'en': 'New Member? ',
      'ar': 'عضو جديد؟',
    },
    'wieu9qcj': {
      'en': 'Register',
      'ar': 'تسجيل',
    },
    '9i53qffm': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'o8bqatp7': {
      'en': ' T&C ',
      'ar': 'الشروط والأحكام',
    },
    '0ieejgfb': {
      'en': 'and ',
      'ar': 'و',
    },
    '8himmvyi': {
      'en': 'Privacy Policy.',
      'ar': 'سياسة الخصوصية.',
    },
    'yjlttrnp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'l9ohh7t6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm31wvbn9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1ri0u1l5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'diw0oidn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'pvdezhv5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'o2gk2vp3': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AddProduct
  {
    'zk8svfsh': {
      'en': 'Add New Product',
      'ar': 'إضافة منتج جديد',
    },
    'm03wq81q': {
      'en': 'Upload Media',
      'ar': 'تحميل الوسائط',
    },
    'hphdsvpi': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'im9zfjgx': {
      'en': 'Product Name',
      'ar': 'اسم المنتج',
    },
    'ksoq7hym': {
      'en': '',
      'ar': '',
    },
    'e6gaqpjn': {
      'en': 'Descreption',
      'ar': 'الوصف',
    },
    'mmi3ehot': {
      'en': '',
      'ar': '',
    },
    'rt0icsib': {
      'en': 'Price',
      'ar': 'سعر',
    },
    'k3fkj5l6': {
      'en': '',
      'ar': '',
    },
    '9mmvyal8': {
      'en': '',
      'ar': '',
    },
    '5598qvke': {
      'en': 'Offer',
      'ar': 'يعرض',
    },
    'he9xsjim': {
      'en': '',
      'ar': '',
    },
    'snjqmkh8': {
      'en': '',
      'ar': '',
    },
    'ei2beubq': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'be9ynarp': {
      'en': 'Total Price: ',
      'ar': 'السعر الكلي:',
    },
    'utb887fu': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LoginTestPhone
  {
    'le0cm3u0': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
    },
    '54sjbzv4': {
      'en': 'Welcome!',
      'ar': 'مرحباً!',
    },
    'y0zefkvd': {
      'en': 'Please Enter Your Phone and Password to Continue Using Our App.',
      'ar': 'يرجى إدخال هاتفك وكلمة المرور لمواصلة استخدام تطبيقنا.',
    },
    'bil5ba6w': {
      'en': 'Enter Your Phone',
      'ar': 'أدخل هاتفك',
    },
    'cf1xxlwh': {
      'en': 'Enter Your Password',
      'ar': 'ادخل رقمك السري',
    },
    '4kgo32o5': {
      'en': 'LOGIN',
      'ar': 'تسجيل الدخول',
    },
    '3kxqhsyr': {
      'en': 'New Member? ',
      'ar': 'عضو جديد؟',
    },
    'lso4vtlf': {
      'en': 'Register',
      'ar': 'تسجيل',
    },
    'qkc8nskl': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'skd5owxv': {
      'en': ' T&C ',
      'ar': 'الشروط والأحكام',
    },
    'wgmgl9qq': {
      'en': 'and ',
      'ar': 'و',
    },
    'f1ok58ql': {
      'en': 'Privacy Policy.',
      'ar': 'سياسة الخصوصية.',
    },
    'sybwopid': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0njlb94r': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'g95q7do9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jfxmrg1b': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '17l3lobe': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yc2rfygl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vuxtzzof': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RegisterWithOTP
  {
    '5x0kcoco': {
      'en': 'Register Now!',
      'ar': 'سجل الان!',
    },
    'bffo9z5h': {
      'en': '',
      'ar': '',
    },
    '6qn703om': {
      'en': '',
      'ar': '',
    },
    'for4mwp7': {
      'en': 'By tapping next you agree to ',
      'ar': 'من خلال النقر على التالي فإنك توافق على',
    },
    'gbbfb81n': {
      'en': 'T&C',
      'ar': ' الشروط والأحكام ',
    },
    'ym3j2fir': {
      'en': ' and ',
      'ar': 'و',
    },
    'ka30lput': {
      'en': 'Privacy Policy.',
      'ar': ' سياسة الخصوصية.',
    },
    'o5kzvbns': {
      'en': 'Already Have An Account ? ',
      'ar': 'هل لديك حساب ؟',
    },
    'e9pjk63j': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gvkvbszw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'cnixsvj8': {
      'en': 'Field is required',
      'ar': '',
    },
    'j040ocyt': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '69e78k37': {
      'en': 'Phone Is Empty ',
      'ar': '',
    },
    'h8tvuvtd': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'dtiutewc': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RegisterCode
  {
    '1jg9nke7': {
      'en': 'Enter the authentication code we sent at ',
      'ar': 'أدخل رمز التوثيق الذي أرسلناه على',
    },
    'amm0lbes': {
      'en': 'Reset Will Be Avilable In ',
      'ar': 'ستكون إعادة الضبط متاحة في',
    },
    '0qklnxo7': {
      'en': 'Didn\'t Get The Code ?',
      'ar': 'لم تحصل على الرمز؟',
    },
    'hkvxrxl2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2e0qd0fw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'd131n8kf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'kf402vm6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'jrh3u9qn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9yq2dt6k': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x9ai6tgi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jqk1y3p0': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'zvdkbv7x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ppfj6ksd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4fhd5ati': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LoginCode
  {
    'qr92t6dm': {
      'en': 'Enter the authentication code we sent at ',
      'ar': 'أدخل رمز التوثيق الذي أرسلناه على',
    },
    'uk7m3zu8': {
      'en': 'Reset Will Be Avilable In ',
      'ar': 'ستكون إعادة الضبط متاحة في',
    },
    'cvzojv0x': {
      'en': 'Didn\'t Get The Code ?',
      'ar': 'لم تحصل على الرمز؟',
    },
    'ohffifpf': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LoginSup
  {
    '10nhhnfo': {
      'en': 'Log in to your Account',
      'ar': 'تسجيل الدخول إلى حسابك',
    },
    'kx1ku1w8': {
      'en': 'Welcome back!',
      'ar': 'مرحبًا بعودتك!',
    },
    'tdavhial': {
      'en': 'Don’t Have An Account? ',
      'ar': 'ليس لديك حساب؟',
    },
    'l9xi1mil': {
      'en': 'Field Is Required',
      'ar': 'الحقل مطلوب',
    },
    '9qx5jonu': {
      'en': 'must be number not start 0',
      'ar': '',
    },
    'w997ago3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'fjyirfxk': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // S_AddBranches
  {
    'pfjkjt8e': {
      'en': 'Select Address ',
      'ar': 'إضافة',
    },
    'o8ll436h': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SelectLanguage
  {
    'qy1f65ar': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PaymentProfileCopy
  {
    '3eiddgz2': {
      'en': 'Home',
      'ar': '',
    },
  },
  // S_PaymentHistory
  {
    'wkromjua': {
      'en': 'Payment Info',
      'ar': 'معلومات الدفع ',
    },
    '1bahlxmn': {
      'en': 'Branch: ',
      'ar': 'الفرع: ',
    },
    '80lwihi8': {
      'en': 'Hello World',
      'ar': '',
    },
    'boim13hh': {
      'en': 'Hello World',
      'ar': '',
    },
    '05yiyypy': {
      'en': 'Hello World',
      'ar': '',
    },
    '6sigv0gl': {
      'en': 'Date: ',
      'ar': 'التاريخ ',
    },
    'rhhv2jgc': {
      'en': 'Hello World',
      'ar': '',
    },
    'o739iif9': {
      'en': 'Home',
      'ar': '',
    },
  },
  // RegisterWithOTPCopy
  {
    'mgwqmh0i': {
      'en': 'Complete the data for registration!',
      'ar': 'أكمل البيانات للتسجيل!',
    },
    'x4q2ojtz': {
      'en': 'Restaurant',
      'ar': 'مطعم',
    },
    '62sknewk': {
      'en': 'Cafe',
      'ar': 'كافيه',
    },
    'u0nlajpd': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'u1f4qlsa': {
      'en': 'Display Picture',
      'ar': 'عرض الصورة',
    },
    'amaodid0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'aoejblsw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'lmhjmnch': {
      'en': 'Field is required',
      'ar': '',
    },
    'adoccvf9': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'igmb18x0': {
      'en': 'Phone Is Empty ',
      'ar': '',
    },
    '1mqcspph': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'idjiw783': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // S_AddAddressMap
  {
    'xlg7z4wf': {
      'en': 'Select Location',
      'ar': '',
    },
    '4mokzhlh': {
      'en': 'Add Your New Addres',
      'ar': '',
    },
    'nbi9g5zy': {
      'en': 'SELECT',
      'ar': '',
    },
    'qniet66c': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // RegisterMap
  {
    '83gjr0x6': {
      'en': 'Select Location',
      'ar': '',
    },
    'zbmghhwq': {
      'en': 'Add Your New Addres',
      'ar': '',
    },
    '2y1ne13q': {
      'en': 'SELECT',
      'ar': '',
    },
    '3e3zplwe': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Restaurants
  {
    'l8g17mf1': {
      'en': 'The Skye',
      'ar': 'سكاي',
    },
    '5dgjg743': {
      'en': 'Restaurant',
      'ar': 'مطعم',
    },
    'drm4z1zg': {
      'en': 'Main Market Riyadh, KSA',
      'ar': 'السوق الرئيسي الرياض، المملكة العربية السعودية',
    },
  },
  // Note
  {
    'ynl17hvt': {
      'en': 'Note',
      'ar': 'ملحوظة',
    },
    'y6cmyg64': {
      'en':
          'You have already selected products from \na different supplier. if you continue, your cart and selection will be removed.',
      'ar':
          'لقد قمت بالفعل باختيار المنتجات من\nمورد مختلف. إذا تابعت، ستتم إزالة سلة التسوق الخاصة بك والاختيار.',
    },
    'z51w0rw4': {
      'en': 'NO',
      'ar': 'لا',
    },
    'kjql9n70': {
      'en': 'YES',
      'ar': 'نعم',
    },
    'zt7wu6th': {
      'en': 'YES',
      'ar': 'نعم',
    },
  },
  // AddedtoBasket
  {
    'f4udfwrj': {
      'en': 'Added to Basket',
      'ar': 'تمت الإضافة إلى السلة',
    },
    'rijutqtn': {
      'en': 'You Item has been successfully added to the basket.',
      'ar': 'تمت إضافة العنصر الخاص بك إلى السلة بنجاح.',
    },
    '0u501x3j': {
      'en': 'CONT.SHOPPING',
      'ar': 'تابع التسوق',
    },
    'lutwiex3': {
      'en': 'VIEW BASKET',
      'ar': 'عرض سلة',
    },
    'rwwl0od6': {
      'en': 'VIEW BASKET',
      'ar': 'عرض سلة',
    },
  },
  // orderhasbeenrequested
  {
    '65nfbdpd': {
      'en':
          'Your order has been requested. kindly go to my order to track your order. ',
      'ar': 'تم الطلب بنجاح. يرجى الذهاب إلى طلبي لتتبع طلبك.',
    },
    '31vp679z': {
      'en': 'Go to My Order',
      'ar': 'اذهب إلى طلبي',
    },
  },
  // RateSupplier
  {
    'aylnvuo6': {
      'en': 'Rate Supplier',
      'ar': 'تقييم المورد',
    },
    '9bzhqkyx': {
      'en': '\n',
      'ar': '',
    },
    '3f2eqh5m': {
      'en': 'Rate',
      'ar': 'تقييم',
    },
    '4t2lu2rt': {
      'en': 'Description',
      'ar': 'الوصف',
    },
    '9b2db2fy': {
      'en': 'continue',
      'ar': 'استمرار',
    },
  },
  // CancelOrder
  {
    'icah4oz3': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد تأكيد استلام الطلب  ',
    },
  },
  // RateProduct
  {
    '2zzltyb1': {
      'en': 'Rate Product',
      'ar': 'تقييم المنتج',
    },
    'z8zrvvng': {
      'en': ' \n',
      'ar': '',
    },
    'gol5is3h': {
      'en': 'Rate',
      'ar': 'تقييم',
    },
    'mnwuxa3v': {
      'en': 'Description',
      'ar': 'الوصف',
    },
    'or3liig0': {
      'en': 'continue',
      'ar': 'استمرار',
    },
  },
  // filter
  {
    'acd1dmso': {
      'en': 'All',
      'ar': 'الجميع',
    },
    '4fgkmihy': {
      'en': 'Pending',
      'ar': 'قيد الانتظار',
    },
    'l42pn5ty': {
      'en': 'Accepted',
      'ar': 'قبلت',
    },
    '8c5zs2xc': {
      'en': 'Completed',
      'ar': 'مكتمل',
    },
    'fqs8q0e7': {
      'en': 'Cancelled',
      'ar': 'ألغيت',
    },
  },
  // NavBar
  {
    'xc7pa2j3': {
      'en': 'HOME',
      'ar': 'الرئيسية',
    },
  },
  // RateDialoge
  {
    '02xfl4em': {
      'en': 'Rate',
      'ar': 'تقييم',
    },
    'vzmadwrk': {
      'en': 'Please Add Your Rating',
      'ar': 'الرجاء إضافة تقييمك',
    },
    'u0olxtyx': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // FeaturedProduct
  {
    'uvw6n5ia': {
      'en': 'Are you sure you want to feature ',
      'ar': 'هل أنت متأكد أنك تريد المميزة',
    },
    '3nat265s': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد المميزة',
    },
  },
  // OfferBox
  {
    'i9sbqjxk': {
      'en': 'Are you sure you want to Remove Offer to  ',
      'ar': 'هل أنت متأكد أنك تريد إزالة العرض  ',
    },
    '7lcvbxp2': {
      'en': 'Are you sure you want to Remove Offer to  ',
      'ar': 'هل أنت متأكد أنك تريد إزالة العرض  ',
    },
  },
  // OfferBox2
  {
    'h5cxygwd': {
      'en': 'Are you sure you want to Add Offer to  ',
      'ar': 'هل أنت متأكد أنك تريد إضافة عرض إلى ',
    },
    '22jz80is': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد إضافة عرض إلى ',
    },
  },
  // Product
  {
    '7ultwmc6': {
      'en': 'Are you sure you want to Remove ',
      'ar': 'هل أنت متأكد من أنك تريد إزالة ',
    },
    'u7z0x4nq': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد من أنك تريد إزالة ',
    },
  },
  // Product2
  {
    'xw5tnlxy': {
      'en': 'Are you sure you want to Undo  ',
      'ar': 'هل أنت متأكد أنك تريد التراجع ',
    },
    'e3nbn9l1': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد التراجع ',
    },
  },
  // Featured2
  {
    'qnl4zlou': {
      'en': 'Are you sure you want to Remove feature ',
      'ar': 'هل أنت متأكد أنك تريد إزالة المميزة  ',
    },
    '8wkkqo45': {
      'en': 'Are you sure you want to Remove feature ',
      'ar': 'هل أنت متأكد أنك تريد إزالة المميزة  ',
    },
  },
  // cancleorderSup
  {
    'eoqnz1t8': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد إلغاء طلبك الحالي؟ ',
    },
  },
  // completedOrder
  {
    'm7zukvua': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد إكمال الطلب الحالي',
    },
  },
  // Accepted
  {
    'ebggqnaq': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد قبول الطلب ',
    },
  },
  // Ready
  {
    'xxxjswi2': {
      'en': 'Are you sure you want to ready the current order  ',
      'ar': 'هل أنت متأكد أنك تريد تأكيد استلام الطلب  ',
    },
    'wwki8wmg': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': 'هل أنت متأكد أنك تريد تأكيد استلام الطلب  ',
    },
  },
  // Countrtycode
  {
    '3f5yqcgs': {
      'en': '+20  Egypt',
      'ar': '+20 مصر',
    },
    'fjuq5a7t': {
      'en': '+971 United Arab Emirates',
      'ar': '+971 الإمارات العربية المتحدة',
    },
    'zjpxdjin': {
      'en': '+966 saudi Arabia',
      'ar': '+966 السعودية',
    },
    'xbv0rfwt': {
      'en': '+974 Qatar',
      'ar': '+974 قطر',
    },
    '9d7ngu6p': {
      'en': ' +968 Oman',
      'ar': '+968 عمان',
    },
    's2c70qso': {
      'en': '+973 Bahrain',
      'ar': '+973 البحرين',
    },
    'ipm2gkhz': {
      'en': '+965 kuwait',
      'ar': '+965 الكويت',
    },
  },
  // TestAlredyExist
  {
    '3yjlwpg3': {
      'en': 'Mobile Number Already Exist ',
      'ar': 'رقم الهاتف المحمول موجود بالفعل',
    },
    'ghn27esu': {
      'en': 'Please Change Phone Number ',
      'ar': 'الرجاء تغيير رقم الهاتف',
    },
    'gf91ylzj': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // RegisterFirst
  {
    'zqvlz2n6': {
      'en': 'Incorrect Mobile Number',
      'ar': 'رقم الجوال غير صحيح',
    },
    'cjg0s59a': {
      'en': 'Please Register First',
      'ar': 'الرجاء التسجيل أولا',
    },
    '3qv1hn2m': {
      'en': 'OK',
      'ar': 'نعم',
    },
  },
  // ReadyButNotRecived
  {
    'du0db8pe': {
      'en':
          'Are you sure you want to ready but not recived the current order  ',
      'ar': '',
    },
    'e7bjwesx': {
      'en':
          'Are you sure you want to cancel your current order (Order Number#af813) ?',
      'ar': '',
    },
  },
  // AddressMap
  {
    '5vzr3xxm': {
      'en': 'Select Location',
      'ar': '',
    },
    'np1475wm': {
      'en': 'Add Your New Addres',
      'ar': '',
    },
    '9qzkyewe': {
      'en': 'SELECT',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'atvj6jiz': {
      'en': '',
      'ar': '',
    },
    '61r3t2d4': {
      'en': '',
      'ar': '',
    },
    'b6dcariz': {
      'en': '',
      'ar': '',
    },
    'qwmrvpu2': {
      'en': '',
      'ar': '',
    },
    'i338kb5r': {
      'en': '',
      'ar': '',
    },
    'jh5smmy6': {
      'en': '',
      'ar': '',
    },
    '8lq62nyo': {
      'en': '',
      'ar': '',
    },
    'dspn9iww': {
      'en': '',
      'ar': '',
    },
    '2xxjvsnf': {
      'en': '',
      'ar': '',
    },
    '2lsh371c': {
      'en': '',
      'ar': '',
    },
    '4qim9da5': {
      'en': '',
      'ar': '',
    },
    '98jqjtzf': {
      'en': '',
      'ar': '',
    },
    'lo1mbfqu': {
      'en': '',
      'ar': '',
    },
    'wlllmi5m': {
      'en': '',
      'ar': '',
    },
    'jgwvlubv': {
      'en': '',
      'ar': '',
    },
    '08zrx0tl': {
      'en': '',
      'ar': '',
    },
    'etwsi57v': {
      'en': '',
      'ar': '',
    },
    'twsg1h72': {
      'en': '',
      'ar': '',
    },
    '2ckwt6ft': {
      'en': '',
      'ar': '',
    },
    'kv3oubvv': {
      'en': '',
      'ar': '',
    },
    'ul9hg81l': {
      'en': '',
      'ar': '',
    },
    'qcz62yax': {
      'en': '',
      'ar': '',
    },
    'dt5uiqrv': {
      'en': '',
      'ar': '',
    },
    'mlssr1n4': {
      'en': '',
      'ar': '',
    },
    'wwwv9x2p': {
      'en': '',
      'ar': '',
    },
    '80bs2596': {
      'en': '',
      'ar': '',
    },
    '53uhuy09': {
      'en': '',
      'ar': '',
    },
    '33hl9cb4': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
