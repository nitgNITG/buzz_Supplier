import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TranslatorRecord extends FirestoreRecord {
  TranslatorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Deleted" field.
  String? _deleted;
  String get deleted => _deleted ?? '';
  bool hasDeleted() => _deleted != null;

  // "DeletedAr" field.
  String? _deletedAr;
  String get deletedAr => _deletedAr ?? '';
  bool hasDeletedAr() => _deletedAr != null;

  // "Featured" field.
  String? _featured;
  String get featured => _featured ?? '';
  bool hasFeatured() => _featured != null;

  // "FeaturedAr" field.
  String? _featuredAr;
  String get featuredAr => _featuredAr ?? '';
  bool hasFeaturedAr() => _featuredAr != null;

  // "SAR" field.
  String? _sar;
  String get sar => _sar ?? '';
  bool hasSar() => _sar != null;

  // "SARAr" field.
  String? _sARAr;
  String get sARAr => _sARAr ?? '';
  bool hasSARAr() => _sARAr != null;

  // "DeletedProducts" field.
  String? _deletedProducts;
  String get deletedProducts => _deletedProducts ?? '';
  bool hasDeletedProducts() => _deletedProducts != null;

  // "DeletedProductsAr" field.
  String? _deletedProductsAr;
  String get deletedProductsAr => _deletedProductsAr ?? '';
  bool hasDeletedProductsAr() => _deletedProductsAr != null;

  // "EditProduct" field.
  String? _editProduct;
  String get editProduct => _editProduct ?? '';
  bool hasEditProduct() => _editProduct != null;

  // "EditProductAr" field.
  String? _editProductAr;
  String get editProductAr => _editProductAr ?? '';
  bool hasEditProductAr() => _editProductAr != null;

  // "UploadMedia" field.
  String? _uploadMedia;
  String get uploadMedia => _uploadMedia ?? '';
  bool hasUploadMedia() => _uploadMedia != null;

  // "UploadMediaAr" field.
  String? _uploadMediaAr;
  String get uploadMediaAr => _uploadMediaAr ?? '';
  bool hasUploadMediaAr() => _uploadMediaAr != null;

  // "AddImage" field.
  String? _addImage;
  String get addImage => _addImage ?? '';
  bool hasAddImage() => _addImage != null;

  // "AddImageAr" field.
  String? _addImageAr;
  String get addImageAr => _addImageAr ?? '';
  bool hasAddImageAr() => _addImageAr != null;

  // "ProductName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "ProductNameAr" field.
  String? _productNameAr;
  String get productNameAr => _productNameAr ?? '';
  bool hasProductNameAr() => _productNameAr != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "PriceAr" field.
  String? _priceAr;
  String get priceAr => _priceAr ?? '';
  bool hasPriceAr() => _priceAr != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "DescriptionAr" field.
  String? _descriptionAr;
  String get descriptionAr => _descriptionAr ?? '';
  bool hasDescriptionAr() => _descriptionAr != null;

  // "OfferPercentage" field.
  String? _offerPercentage;
  String get offerPercentage => _offerPercentage ?? '';
  bool hasOfferPercentage() => _offerPercentage != null;

  // "OfferPercentageAr" field.
  String? _offerPercentageAr;
  String get offerPercentageAr => _offerPercentageAr ?? '';
  bool hasOfferPercentageAr() => _offerPercentageAr != null;

  // "ApplyOffer" field.
  String? _applyOffer;
  String get applyOffer => _applyOffer ?? '';
  bool hasApplyOffer() => _applyOffer != null;

  // "ApplyOfferAr" field.
  String? _applyOfferAr;
  String get applyOfferAr => _applyOfferAr ?? '';
  bool hasApplyOfferAr() => _applyOfferAr != null;

  // "TotalPrice" field.
  String? _totalPrice;
  String get totalPrice => _totalPrice ?? '';
  bool hasTotalPrice() => _totalPrice != null;

  // "TotalPriceAr" field.
  String? _totalPriceAr;
  String get totalPriceAr => _totalPriceAr ?? '';
  bool hasTotalPriceAr() => _totalPriceAr != null;

  // "LoginCode" field.
  String? _loginCode;
  String get loginCode => _loginCode ?? '';
  bool hasLoginCode() => _loginCode != null;

  // "LoginCodeAr" field.
  String? _loginCodeAr;
  String get loginCodeAr => _loginCodeAr ?? '';
  bool hasLoginCodeAr() => _loginCodeAr != null;

  // "Resend" field.
  String? _resend;
  String get resend => _resend ?? '';
  bool hasResend() => _resend != null;

  // "ResendAr" field.
  String? _resendAr;
  String get resendAr => _resendAr ?? '';
  bool hasResendAr() => _resendAr != null;

  // "Login" field.
  String? _login;
  String get login => _login ?? '';
  bool hasLogin() => _login != null;

  // "LoginAr" field.
  String? _loginAr;
  String get loginAr => _loginAr ?? '';
  bool hasLoginAr() => _loginAr != null;

  // "EnterYourPhone" field.
  String? _enterYourPhone;
  String get enterYourPhone => _enterYourPhone ?? '';
  bool hasEnterYourPhone() => _enterYourPhone != null;

  // "EnterYourPhoneAr" field.
  String? _enterYourPhoneAr;
  String get enterYourPhoneAr => _enterYourPhoneAr ?? '';
  bool hasEnterYourPhoneAr() => _enterYourPhoneAr != null;

  // "Register" field.
  String? _register;
  String get register => _register ?? '';
  bool hasRegister() => _register != null;

  // "RegisterAr" field.
  String? _registerAr;
  String get registerAr => _registerAr ?? '';
  bool hasRegisterAr() => _registerAr != null;

  // "Approved" field.
  String? _approved;
  String get approved => _approved ?? '';
  bool hasApproved() => _approved != null;

  // "ApprovedAr" field.
  String? _approvedAr;
  String get approvedAr => _approvedAr ?? '';
  bool hasApprovedAr() => _approvedAr != null;

  // "ManageOffers" field.
  String? _manageOffers;
  String get manageOffers => _manageOffers ?? '';
  bool hasManageOffers() => _manageOffers != null;

  // "ManageOffersAr" field.
  String? _manageOffersAr;
  String get manageOffersAr => _manageOffersAr ?? '';
  bool hasManageOffersAr() => _manageOffersAr != null;

  // "ManageProducts" field.
  String? _manageProducts;
  String get manageProducts => _manageProducts ?? '';
  bool hasManageProducts() => _manageProducts != null;

  // "ManageProductsAr" field.
  String? _manageProductsAr;
  String get manageProductsAr => _manageProductsAr ?? '';
  bool hasManageProductsAr() => _manageProductsAr != null;

  // "AddNewProduct" field.
  String? _addNewProduct;
  String get addNewProduct => _addNewProduct ?? '';
  bool hasAddNewProduct() => _addNewProduct != null;

  // "AddNewProductAr" field.
  String? _addNewProductAr;
  String get addNewProductAr => _addNewProductAr ?? '';
  bool hasAddNewProductAr() => _addNewProductAr != null;

  // "Notifications" field.
  String? _notifications;
  String get notifications => _notifications ?? '';
  bool hasNotifications() => _notifications != null;

  // "NotificationsAr" field.
  String? _notificationsAr;
  String get notificationsAr => _notificationsAr ?? '';
  bool hasNotificationsAr() => _notificationsAr != null;

  // "PaymentProfile" field.
  String? _paymentProfile;
  String get paymentProfile => _paymentProfile ?? '';
  bool hasPaymentProfile() => _paymentProfile != null;

  // "PaymentProfileAr" field.
  String? _paymentProfileAr;
  String get paymentProfileAr => _paymentProfileAr ?? '';
  bool hasPaymentProfileAr() => _paymentProfileAr != null;

  // "PaymentInfo" field.
  String? _paymentInfo;
  String get paymentInfo => _paymentInfo ?? '';
  bool hasPaymentInfo() => _paymentInfo != null;

  // "PaymentInfoAr" field.
  String? _paymentInfoAr;
  String get paymentInfoAr => _paymentInfoAr ?? '';
  bool hasPaymentInfoAr() => _paymentInfoAr != null;

  // "BranchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  // "BranchNameAr" field.
  String? _branchNameAr;
  String get branchNameAr => _branchNameAr ?? '';
  bool hasBranchNameAr() => _branchNameAr != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "AmountAr" field.
  String? _amountAr;
  String get amountAr => _amountAr ?? '';
  bool hasAmountAr() => _amountAr != null;

  // "AppPercentage" field.
  String? _appPercentage;
  String get appPercentage => _appPercentage ?? '';
  bool hasAppPercentage() => _appPercentage != null;

  // "AppPercentageAr" field.
  String? _appPercentageAr;
  String get appPercentageAr => _appPercentageAr ?? '';
  bool hasAppPercentageAr() => _appPercentageAr != null;

  // "SupplierPercentage" field.
  String? _supplierPercentage;
  String get supplierPercentage => _supplierPercentage ?? '';
  bool hasSupplierPercentage() => _supplierPercentage != null;

  // "SupplierPercentageAr" field.
  String? _supplierPercentageAr;
  String get supplierPercentageAr => _supplierPercentageAr ?? '';
  bool hasSupplierPercentageAr() => _supplierPercentageAr != null;

  // "Total" field.
  String? _total;
  String get total => _total ?? '';
  bool hasTotal() => _total != null;

  // "TotalAr" field.
  String? _totalAr;
  String get totalAr => _totalAr ?? '';
  bool hasTotalAr() => _totalAr != null;

  // "RatingsReviews" field.
  String? _ratingsReviews;
  String get ratingsReviews => _ratingsReviews ?? '';
  bool hasRatingsReviews() => _ratingsReviews != null;

  // "RatingsReviewsAr" field.
  String? _ratingsReviewsAr;
  String get ratingsReviewsAr => _ratingsReviewsAr ?? '';
  bool hasRatingsReviewsAr() => _ratingsReviewsAr != null;

  // "Ratings" field.
  String? _ratings;
  String get ratings => _ratings ?? '';
  bool hasRatings() => _ratings != null;

  // "RatingsAr" field.
  String? _ratingsAr;
  String get ratingsAr => _ratingsAr ?? '';
  bool hasRatingsAr() => _ratingsAr != null;

  // "RegisterCafeRestaurant" field.
  String? _registerCafeRestaurant;
  String get registerCafeRestaurant => _registerCafeRestaurant ?? '';
  bool hasRegisterCafeRestaurant() => _registerCafeRestaurant != null;

  // "RegisterCafeRestaurantAr" field.
  String? _registerCafeRestaurantAr;
  String get registerCafeRestaurantAr => _registerCafeRestaurantAr ?? '';
  bool hasRegisterCafeRestaurantAr() => _registerCafeRestaurantAr != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "TypeAr" field.
  String? _typeAr;
  String get typeAr => _typeAr ?? '';
  bool hasTypeAr() => _typeAr != null;

  // "Restaurant" field.
  String? _restaurant;
  String get restaurant => _restaurant ?? '';
  bool hasRestaurant() => _restaurant != null;

  // "RestaurantAr" field.
  String? _restaurantAr;
  String get restaurantAr => _restaurantAr ?? '';
  bool hasRestaurantAr() => _restaurantAr != null;

  // "Cafe" field.
  String? _cafe;
  String get cafe => _cafe ?? '';
  bool hasCafe() => _cafe != null;

  // "CafeAr" field.
  String? _cafeAr;
  String get cafeAr => _cafeAr ?? '';
  bool hasCafeAr() => _cafeAr != null;

  // "PlaceName" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "PlaceNameAr" field.
  String? _placeNameAr;
  String get placeNameAr => _placeNameAr ?? '';
  bool hasPlaceNameAr() => _placeNameAr != null;

  // "DisplayPicture" field.
  String? _displayPicture;
  String get displayPicture => _displayPicture ?? '';
  bool hasDisplayPicture() => _displayPicture != null;

  // "DisplayPictureAr" field.
  String? _displayPictureAr;
  String get displayPictureAr => _displayPictureAr ?? '';
  bool hasDisplayPictureAr() => _displayPictureAr != null;

  // "TradeLicense" field.
  String? _tradeLicense;
  String get tradeLicense => _tradeLicense ?? '';
  bool hasTradeLicense() => _tradeLicense != null;

  // "TradeLicenseAr" field.
  String? _tradeLicenseAr;
  String get tradeLicenseAr => _tradeLicenseAr ?? '';
  bool hasTradeLicenseAr() => _tradeLicenseAr != null;

  // "AddBranche" field.
  String? _addBranche;
  String get addBranche => _addBranche ?? '';
  bool hasAddBranche() => _addBranche != null;

  // "AddBrancheAr" field.
  String? _addBrancheAr;
  String get addBrancheAr => _addBrancheAr ?? '';
  bool hasAddBrancheAr() => _addBrancheAr != null;

  // "AddLocation" field.
  String? _addLocation;
  String get addLocation => _addLocation ?? '';
  bool hasAddLocation() => _addLocation != null;

  // "AddLocationAr" field.
  String? _addLocationAr;
  String get addLocationAr => _addLocationAr ?? '';
  bool hasAddLocationAr() => _addLocationAr != null;

  // "Add" field.
  String? _add;
  String get add => _add ?? '';
  bool hasAdd() => _add != null;

  // "AddAr" field.
  String? _addAr;
  String get addAr => _addAr ?? '';
  bool hasAddAr() => _addAr != null;

  // "BrancheAddress" field.
  String? _brancheAddress;
  String get brancheAddress => _brancheAddress ?? '';
  bool hasBrancheAddress() => _brancheAddress != null;

  // "BrancheAddressAr" field.
  String? _brancheAddressAr;
  String get brancheAddressAr => _brancheAddressAr ?? '';
  bool hasBrancheAddressAr() => _brancheAddressAr != null;

  // "SelectProducts" field.
  String? _selectProducts;
  String get selectProducts => _selectProducts ?? '';
  bool hasSelectProducts() => _selectProducts != null;

  // "SelectProductsAr" field.
  String? _selectProductsAr;
  String get selectProductsAr => _selectProductsAr ?? '';
  bool hasSelectProductsAr() => _selectProductsAr != null;

  // "AddProduct" field.
  String? _addProduct;
  String get addProduct => _addProduct ?? '';
  bool hasAddProduct() => _addProduct != null;

  // "AddProductAr" field.
  String? _addProductAr;
  String get addProductAr => _addProductAr ?? '';
  bool hasAddProductAr() => _addProductAr != null;

  // "EditProfile" field.
  String? _editProfile;
  String get editProfile => _editProfile ?? '';
  bool hasEditProfile() => _editProfile != null;

  // "EditProfileAr" field.
  String? _editProfileAr;
  String get editProfileAr => _editProfileAr ?? '';
  bool hasEditProfileAr() => _editProfileAr != null;

  // "EditDisplayImage" field.
  String? _editDisplayImage;
  String get editDisplayImage => _editDisplayImage ?? '';
  bool hasEditDisplayImage() => _editDisplayImage != null;

  // "EditDisplayImageAr" field.
  String? _editDisplayImageAr;
  String get editDisplayImageAr => _editDisplayImageAr ?? '';
  bool hasEditDisplayImageAr() => _editDisplayImageAr != null;

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "FullNameAr" field.
  String? _fullNameAr;
  String get fullNameAr => _fullNameAr ?? '';
  bool hasFullNameAr() => _fullNameAr != null;

  // "AttachYourTradeLicense" field.
  String? _attachYourTradeLicense;
  String get attachYourTradeLicense => _attachYourTradeLicense ?? '';
  bool hasAttachYourTradeLicense() => _attachYourTradeLicense != null;

  // "AttachYourTradeLicenseAr" field.
  String? _attachYourTradeLicenseAr;
  String get attachYourTradeLicenseAr => _attachYourTradeLicenseAr ?? '';
  bool hasAttachYourTradeLicenseAr() => _attachYourTradeLicenseAr != null;

  // "UpdateAr" field.
  String? _updateAr;
  String get updateAr => _updateAr ?? '';
  bool hasUpdateAr() => _updateAr != null;

  // "UpdateEn" field.
  String? _updateEn;
  String get updateEn => _updateEn ?? '';
  bool hasUpdateEn() => _updateEn != null;

  // "FeaturedProducts" field.
  String? _featuredProducts;
  String get featuredProducts => _featuredProducts ?? '';
  bool hasFeaturedProducts() => _featuredProducts != null;

  // "FeaturedProductsAr" field.
  String? _featuredProductsAr;
  String get featuredProductsAr => _featuredProductsAr ?? '';
  bool hasFeaturedProductsAr() => _featuredProductsAr != null;

  // "ManageOrders" field.
  String? _manageOrders;
  String get manageOrders => _manageOrders ?? '';
  bool hasManageOrders() => _manageOrders != null;

  // "ManageOrdersAr" field.
  String? _manageOrdersAr;
  String get manageOrdersAr => _manageOrdersAr ?? '';
  bool hasManageOrdersAr() => _manageOrdersAr != null;

  // "OrderTime" field.
  String? _orderTime;
  String get orderTime => _orderTime ?? '';
  bool hasOrderTime() => _orderTime != null;

  // "OrderTimeAr" field.
  String? _orderTimeAr;
  String get orderTimeAr => _orderTimeAr ?? '';
  bool hasOrderTimeAr() => _orderTimeAr != null;

  // "TotalProducts" field.
  String? _totalProducts;
  String get totalProducts => _totalProducts ?? '';
  bool hasTotalProducts() => _totalProducts != null;

  // "TotalProductsAr" field.
  String? _totalProductsAr;
  String get totalProductsAr => _totalProductsAr ?? '';
  bool hasTotalProductsAr() => _totalProductsAr != null;

  // "MyOrders" field.
  String? _myOrders;
  String get myOrders => _myOrders ?? '';
  bool hasMyOrders() => _myOrders != null;

  // "MyOrdersAr" field.
  String? _myOrdersAr;
  String get myOrdersAr => _myOrdersAr ?? '';
  bool hasMyOrdersAr() => _myOrdersAr != null;

  // "OrderDetails" field.
  String? _orderDetails;
  String get orderDetails => _orderDetails ?? '';
  bool hasOrderDetails() => _orderDetails != null;

  // "OrderDetailsAr" field.
  String? _orderDetailsAr;
  String get orderDetailsAr => _orderDetailsAr ?? '';
  bool hasOrderDetailsAr() => _orderDetailsAr != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "TimeAr" field.
  String? _timeAr;
  String get timeAr => _timeAr ?? '';
  bool hasTimeAr() => _timeAr != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "StatusAr" field.
  String? _statusAr;
  String get statusAr => _statusAr ?? '';
  bool hasStatusAr() => _statusAr != null;

  // "PaymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "PaymentMethodAr" field.
  String? _paymentMethodAr;
  String get paymentMethodAr => _paymentMethodAr ?? '';
  bool hasPaymentMethodAr() => _paymentMethodAr != null;

  // "Branche" field.
  String? _branche;
  String get branche => _branche ?? '';
  bool hasBranche() => _branche != null;

  // "BrancheAr" field.
  String? _brancheAr;
  String get brancheAr => _brancheAr ?? '';
  bool hasBrancheAr() => _brancheAr != null;

  // "UserInformation" field.
  String? _userInformation;
  String get userInformation => _userInformation ?? '';
  bool hasUserInformation() => _userInformation != null;

  // "UserInformationAr" field.
  String? _userInformationAr;
  String get userInformationAr => _userInformationAr ?? '';
  bool hasUserInformationAr() => _userInformationAr != null;

  // "OrderItems" field.
  String? _orderItems;
  String get orderItems => _orderItems ?? '';
  bool hasOrderItems() => _orderItems != null;

  // "OrderItemsAr" field.
  String? _orderItemsAr;
  String get orderItemsAr => _orderItemsAr ?? '';
  bool hasOrderItemsAr() => _orderItemsAr != null;

  // "Quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "QuantityAr" field.
  String? _quantityAr;
  String get quantityAr => _quantityAr ?? '';
  bool hasQuantityAr() => _quantityAr != null;

  // "SubTotal" field.
  String? _subTotal;
  String get subTotal => _subTotal ?? '';
  bool hasSubTotal() => _subTotal != null;

  // "SubTotalAr" field.
  String? _subTotalAr;
  String get subTotalAr => _subTotalAr ?? '';
  bool hasSubTotalAr() => _subTotalAr != null;

  // "OrderSummary" field.
  String? _orderSummary;
  String get orderSummary => _orderSummary ?? '';
  bool hasOrderSummary() => _orderSummary != null;

  // "OrderSummaryAr" field.
  String? _orderSummaryAr;
  String get orderSummaryAr => _orderSummaryAr ?? '';
  bool hasOrderSummaryAr() => _orderSummaryAr != null;

  // "MARKASCOMPLETED" field.
  String? _markascompleted;
  String get markascompleted => _markascompleted ?? '';
  bool hasMarkascompleted() => _markascompleted != null;

  // "MARKASCOMPLETEDAr" field.
  String? _mARKASCOMPLETEDAr;
  String get mARKASCOMPLETEDAr => _mARKASCOMPLETEDAr ?? '';
  bool hasMARKASCOMPLETEDAr() => _mARKASCOMPLETEDAr != null;

  // "MARKASREADY" field.
  String? _markasready;
  String get markasready => _markasready ?? '';
  bool hasMarkasready() => _markasready != null;

  // "MARKASREADYAr" field.
  String? _mARKASREADYAr;
  String get mARKASREADYAr => _mARKASREADYAr ?? '';
  bool hasMARKASREADYAr() => _mARKASREADYAr != null;

  // "AcceptedOrder" field.
  String? _acceptedOrder;
  String get acceptedOrder => _acceptedOrder ?? '';
  bool hasAcceptedOrder() => _acceptedOrder != null;

  // "AcceptedOrderAr" field.
  String? _acceptedOrderAr;
  String get acceptedOrderAr => _acceptedOrderAr ?? '';
  bool hasAcceptedOrderAr() => _acceptedOrderAr != null;

  // "CancelOrder" field.
  String? _cancelOrder;
  String get cancelOrder => _cancelOrder ?? '';
  bool hasCancelOrder() => _cancelOrder != null;

  // "CancelOrderAr" field.
  String? _cancelOrderAr;
  String get cancelOrderAr => _cancelOrderAr ?? '';
  bool hasCancelOrderAr() => _cancelOrderAr != null;

  // "MyInformation" field.
  String? _myInformation;
  String get myInformation => _myInformation ?? '';
  bool hasMyInformation() => _myInformation != null;

  // "MyInformationAr" field.
  String? _myInformationAr;
  String get myInformationAr => _myInformationAr ?? '';
  bool hasMyInformationAr() => _myInformationAr != null;

  // "ManageAccount" field.
  String? _manageAccount;
  String get manageAccount => _manageAccount ?? '';
  bool hasManageAccount() => _manageAccount != null;

  // "ManageAccountAr" field.
  String? _manageAccountAr;
  String get manageAccountAr => _manageAccountAr ?? '';
  bool hasManageAccountAr() => _manageAccountAr != null;

  // "Profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  bool hasProfile() => _profile != null;

  // "ProfileAr" field.
  String? _profileAr;
  String get profileAr => _profileAr ?? '';
  bool hasProfileAr() => _profileAr != null;

  // "AboutAboutUs" field.
  String? _aboutAboutUs;
  String get aboutAboutUs => _aboutAboutUs ?? '';
  bool hasAboutAboutUs() => _aboutAboutUs != null;

  // "AboutAboutUsAr" field.
  String? _aboutAboutUsAr;
  String get aboutAboutUsAr => _aboutAboutUsAr ?? '';
  bool hasAboutAboutUsAr() => _aboutAboutUsAr != null;

  // "Home" field.
  String? _home;
  String get home => _home ?? '';
  bool hasHome() => _home != null;

  // "HomeAr" field.
  String? _homeAr;
  String get homeAr => _homeAr ?? '';
  bool hasHomeAr() => _homeAr != null;

  // "Articles" field.
  String? _articles;
  String get articles => _articles ?? '';
  bool hasArticles() => _articles != null;

  // "ArticlesAr" field.
  String? _articlesAr;
  String get articlesAr => _articlesAr ?? '';
  bool hasArticlesAr() => _articlesAr != null;

  // "ImageGallery" field.
  String? _imageGallery;
  String get imageGallery => _imageGallery ?? '';
  bool hasImageGallery() => _imageGallery != null;

  // "ImageGalleryAr" field.
  String? _imageGalleryAr;
  String get imageGalleryAr => _imageGalleryAr ?? '';
  bool hasImageGalleryAr() => _imageGalleryAr != null;

  // "FAQ" field.
  String? _faq;
  String get faq => _faq ?? '';
  bool hasFaq() => _faq != null;

  // "FAQAr" field.
  String? _fAQAr;
  String get fAQAr => _fAQAr ?? '';
  bool hasFAQAr() => _fAQAr != null;

  // "MissionVision" field.
  String? _missionVision;
  String get missionVision => _missionVision ?? '';
  bool hasMissionVision() => _missionVision != null;

  // "MissionVisionAr" field.
  String? _missionVisionAr;
  String get missionVisionAr => _missionVisionAr ?? '';
  bool hasMissionVisionAr() => _missionVisionAr != null;

  // "ContactUs" field.
  String? _contactUs;
  String get contactUs => _contactUs ?? '';
  bool hasContactUs() => _contactUs != null;

  // "ContactUsAr" field.
  String? _contactUsAr;
  String get contactUsAr => _contactUsAr ?? '';
  bool hasContactUsAr() => _contactUsAr != null;

  // "PrivacyPolicy" field.
  String? _privacyPolicy;
  String get privacyPolicy => _privacyPolicy ?? '';
  bool hasPrivacyPolicy() => _privacyPolicy != null;

  // "PrivacyPolicyAr" field.
  String? _privacyPolicyAr;
  String get privacyPolicyAr => _privacyPolicyAr ?? '';
  bool hasPrivacyPolicyAr() => _privacyPolicyAr != null;

  // "TermsConditions" field.
  String? _termsConditions;
  String get termsConditions => _termsConditions ?? '';
  bool hasTermsConditions() => _termsConditions != null;

  // "TermsConditionsAr" field.
  String? _termsConditionsAr;
  String get termsConditionsAr => _termsConditionsAr ?? '';
  bool hasTermsConditionsAr() => _termsConditionsAr != null;

  // "Settings" field.
  String? _settings;
  String get settings => _settings ?? '';
  bool hasSettings() => _settings != null;

  // "SettingsAr" field.
  String? _settingsAr;
  String get settingsAr => _settingsAr ?? '';
  bool hasSettingsAr() => _settingsAr != null;

  // "Logout" field.
  String? _logout;
  String get logout => _logout ?? '';
  bool hasLogout() => _logout != null;

  // "LogoutAr" field.
  String? _logoutAr;
  String get logoutAr => _logoutAr ?? '';
  bool hasLogoutAr() => _logoutAr != null;

  // "FollowUs" field.
  String? _followUs;
  String get followUs => _followUs ?? '';
  bool hasFollowUs() => _followUs != null;

  // "FollowUsAr" field.
  String? _followUsAr;
  String get followUsAr => _followUsAr ?? '';
  bool hasFollowUsAr() => _followUsAr != null;

  // "ArticlesDetails" field.
  String? _articlesDetails;
  String get articlesDetails => _articlesDetails ?? '';
  bool hasArticlesDetails() => _articlesDetails != null;

  // "ArticlesDetailsAr" field.
  String? _articlesDetailsAr;
  String get articlesDetailsAr => _articlesDetailsAr ?? '';
  bool hasArticlesDetailsAr() => _articlesDetailsAr != null;

  // "ArticlesPublishedby" field.
  String? _articlesPublishedby;
  String get articlesPublishedby => _articlesPublishedby ?? '';
  bool hasArticlesPublishedby() => _articlesPublishedby != null;

  // "ArticlesPublishedbyAr" field.
  String? _articlesPublishedbyAr;
  String get articlesPublishedbyAr => _articlesPublishedbyAr ?? '';
  bool hasArticlesPublishedbyAr() => _articlesPublishedbyAr != null;

  // "SelectLanguage" field.
  String? _selectLanguage;
  String get selectLanguage => _selectLanguage ?? '';
  bool hasSelectLanguage() => _selectLanguage != null;

  // "SelectLanguageAr" field.
  String? _selectLanguageAr;
  String get selectLanguageAr => _selectLanguageAr ?? '';
  bool hasSelectLanguageAr() => _selectLanguageAr != null;

  // "English" field.
  String? _english;
  String get english => _english ?? '';
  bool hasEnglish() => _english != null;

  // "EnglishAr" field.
  String? _englishAr;
  String get englishAr => _englishAr ?? '';
  bool hasEnglishAr() => _englishAr != null;

  // "Arabic" field.
  String? _arabic;
  String get arabic => _arabic ?? '';
  bool hasArabic() => _arabic != null;

  // "ArabicAr" field.
  String? _arabicAr;
  String get arabicAr => _arabicAr ?? '';
  bool hasArabicAr() => _arabicAr != null;

  // "ContinueApp" field.
  String? _continueApp;
  String get continueApp => _continueApp ?? '';
  bool hasContinueApp() => _continueApp != null;

  // "ContinueAppAr" field.
  String? _continueAppAr;
  String get continueAppAr => _continueAppAr ?? '';
  bool hasContinueAppAr() => _continueAppAr != null;

  // "Yes" field.
  String? _yes;
  String get yes => _yes ?? '';
  bool hasYes() => _yes != null;

  // "YesAr" field.
  String? _yesAr;
  String get yesAr => _yesAr ?? '';
  bool hasYesAr() => _yesAr != null;

  // "No" field.
  String? _no;
  String get no => _no ?? '';
  bool hasNo() => _no != null;

  // "NoAr" field.
  String? _noAr;
  String get noAr => _noAr ?? '';
  bool hasNoAr() => _noAr != null;

  // "hintaccepttheorder" field.
  String? _hintaccepttheorder;
  String get hintaccepttheorder => _hintaccepttheorder ?? '';
  bool hasHintaccepttheorder() => _hintaccepttheorder != null;

  // "hintaccepttheorderAr" field.
  String? _hintaccepttheorderAr;
  String get hintaccepttheorderAr => _hintaccepttheorderAr ?? '';
  bool hasHintaccepttheorderAr() => _hintaccepttheorderAr != null;

  // "SureCancelOrder" field.
  String? _sureCancelOrder;
  String get sureCancelOrder => _sureCancelOrder ?? '';
  bool hasSureCancelOrder() => _sureCancelOrder != null;

  // "SureCancelOrderAr" field.
  String? _sureCancelOrderAr;
  String get sureCancelOrderAr => _sureCancelOrderAr ?? '';
  bool hasSureCancelOrderAr() => _sureCancelOrderAr != null;

  // "CompletedOrder" field.
  String? _completedOrder;
  String get completedOrder => _completedOrder ?? '';
  bool hasCompletedOrder() => _completedOrder != null;

  // "CompletedOrderAr" field.
  String? _completedOrderAr;
  String get completedOrderAr => _completedOrderAr ?? '';
  bool hasCompletedOrderAr() => _completedOrderAr != null;

  // "SureCompleteOrder" field.
  String? _sureCompleteOrder;
  String get sureCompleteOrder => _sureCompleteOrder ?? '';
  bool hasSureCompleteOrder() => _sureCompleteOrder != null;

  // "SureCompleteOrderAr" field.
  String? _sureCompleteOrderAr;
  String get sureCompleteOrderAr => _sureCompleteOrderAr ?? '';
  bool hasSureCompleteOrderAr() => _sureCompleteOrderAr != null;

  // "completDataError" field.
  String? _completDataError;
  String get completDataError => _completDataError ?? '';
  bool hasCompletDataError() => _completDataError != null;

  // "completDataErrorAr" field.
  String? _completDataErrorAr;
  String get completDataErrorAr => _completDataErrorAr ?? '';
  bool hasCompletDataErrorAr() => _completDataErrorAr != null;

  // "OkApp" field.
  String? _okApp;
  String get okApp => _okApp ?? '';
  bool hasOkApp() => _okApp != null;

  // "OkAppAr" field.
  String? _okAppAr;
  String get okAppAr => _okAppAr ?? '';
  bool hasOkAppAr() => _okAppAr != null;

  // "FeatureProduct" field.
  String? _featureProduct;
  String get featureProduct => _featureProduct ?? '';
  bool hasFeatureProduct() => _featureProduct != null;

  // "FeatureProductAr" field.
  String? _featureProductAr;
  String get featureProductAr => _featureProductAr ?? '';
  bool hasFeatureProductAr() => _featureProductAr != null;

  // "OfferProduct" field.
  String? _offerProduct;
  String get offerProduct => _offerProduct ?? '';
  bool hasOfferProduct() => _offerProduct != null;

  // "OfferProductAr" field.
  String? _offerProductAr;
  String get offerProductAr => _offerProductAr ?? '';
  bool hasOfferProductAr() => _offerProductAr != null;

  // "ManageProduct" field.
  String? _manageProduct;
  String get manageProduct => _manageProduct ?? '';
  bool hasManageProduct() => _manageProduct != null;

  // "ManageProductAr" field.
  String? _manageProductAr;
  String get manageProductAr => _manageProductAr ?? '';
  bool hasManageProductAr() => _manageProductAr != null;

  // "ReadyOrder" field.
  String? _readyOrder;
  String get readyOrder => _readyOrder ?? '';
  bool hasReadyOrder() => _readyOrder != null;

  // "ReadyOrderAr" field.
  String? _readyOrderAr;
  String get readyOrderAr => _readyOrderAr ?? '';
  bool hasReadyOrderAr() => _readyOrderAr != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "AddressAr" field.
  String? _addressAr;
  String get addressAr => _addressAr ?? '';
  bool hasAddressAr() => _addressAr != null;

  // "AddressArabic" field.
  String? _addressArabic;
  String get addressArabic => _addressArabic ?? '';
  bool hasAddressArabic() => _addressArabic != null;

  // "AddressArabicAr" field.
  String? _addressArabicAr;
  String get addressArabicAr => _addressArabicAr ?? '';
  bool hasAddressArabicAr() => _addressArabicAr != null;

  // "PymentCreditCard" field.
  String? _pymentCreditCard;
  String get pymentCreditCard => _pymentCreditCard ?? '';
  bool hasPymentCreditCard() => _pymentCreditCard != null;

  // "PymentCreditCardAr" field.
  String? _pymentCreditCardAr;
  String get pymentCreditCardAr => _pymentCreditCardAr ?? '';
  bool hasPymentCreditCardAr() => _pymentCreditCardAr != null;

  // "AboutData" field.
  String? _aboutData;
  String get aboutData => _aboutData ?? '';
  bool hasAboutData() => _aboutData != null;

  // "AboutDataAr" field.
  String? _aboutDataAr;
  String get aboutDataAr => _aboutDataAr ?? '';
  bool hasAboutDataAr() => _aboutDataAr != null;

  // "Submit" field.
  String? _submit;
  String get submit => _submit ?? '';
  bool hasSubmit() => _submit != null;

  // "SubmitAr" field.
  String? _submitAr;
  String get submitAr => _submitAr ?? '';
  bool hasSubmitAr() => _submitAr != null;

  // "Subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "SubjectAr" field.
  String? _subjectAr;
  String get subjectAr => _subjectAr ?? '';
  bool hasSubjectAr() => _subjectAr != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "NameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  bool hasNameAr() => _nameAr != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "EmailAr" field.
  String? _emailAr;
  String get emailAr => _emailAr ?? '';
  bool hasEmailAr() => _emailAr != null;

  // "Comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "CommentsAr" field.
  String? _commentsAr;
  String get commentsAr => _commentsAr ?? '';
  bool hasCommentsAr() => _commentsAr != null;

  // "FullNameArabic" field.
  String? _fullNameArabic;
  String get fullNameArabic => _fullNameArabic ?? '';
  bool hasFullNameArabic() => _fullNameArabic != null;

  // "FullNameArabicAr" field.
  String? _fullNameArabicAr;
  String get fullNameArabicAr => _fullNameArabicAr ?? '';
  bool hasFullNameArabicAr() => _fullNameArabicAr != null;

  // "HistoryPayment" field.
  String? _historyPayment;
  String get historyPayment => _historyPayment ?? '';
  bool hasHistoryPayment() => _historyPayment != null;

  // "HistoryPaymentAr" field.
  String? _historyPaymentAr;
  String get historyPaymentAr => _historyPaymentAr ?? '';
  bool hasHistoryPaymentAr() => _historyPaymentAr != null;

  // "AppNameSupplier" field.
  String? _appNameSupplier;
  String get appNameSupplier => _appNameSupplier ?? '';
  bool hasAppNameSupplier() => _appNameSupplier != null;

  // "AppNameSupplierAr" field.
  String? _appNameSupplierAr;
  String get appNameSupplierAr => _appNameSupplierAr ?? '';
  bool hasAppNameSupplierAr() => _appNameSupplierAr != null;

  // "ReadyButNotRecived" field.
  String? _readyButNotRecived;
  String get readyButNotRecived => _readyButNotRecived ?? '';
  bool hasReadyButNotRecived() => _readyButNotRecived != null;

  // "ReadyButNotRecivedAr" field.
  String? _readyButNotRecivedAr;
  String get readyButNotRecivedAr => _readyButNotRecivedAr ?? '';
  bool hasReadyButNotRecivedAr() => _readyButNotRecivedAr != null;

  // "DeleteAccount" field.
  String? _deleteAccount;
  String get deleteAccount => _deleteAccount ?? '';
  bool hasDeleteAccount() => _deleteAccount != null;

  // "DeleteAccountAr" field.
  String? _deleteAccountAr;
  String get deleteAccountAr => _deleteAccountAr ?? '';
  bool hasDeleteAccountAr() => _deleteAccountAr != null;

  // "deleteMas" field.
  String? _deleteMas;
  String get deleteMas => _deleteMas ?? '';
  bool hasDeleteMas() => _deleteMas != null;

  // "deleteMasAr" field.
  String? _deleteMasAr;
  String get deleteMasAr => _deleteMasAr ?? '';
  bool hasDeleteMasAr() => _deleteMasAr != null;

  // "DeleteMessage" field.
  String? _deleteMessage;
  String get deleteMessage => _deleteMessage ?? '';
  bool hasDeleteMessage() => _deleteMessage != null;

  // "DeleteMessageAr" field.
  String? _deleteMessageAr;
  String get deleteMessageAr => _deleteMessageAr ?? '';
  bool hasDeleteMessageAr() => _deleteMessageAr != null;

  // "next" field.
  String? _next;
  String get next => _next ?? '';
  bool hasNext() => _next != null;

  // "nextAr" field.
  String? _nextAr;
  String get nextAr => _nextAr ?? '';
  bool hasNextAr() => _nextAr != null;

  void _initializeFields() {
    _deleted = snapshotData['Deleted'] as String?;
    _deletedAr = snapshotData['DeletedAr'] as String?;
    _featured = snapshotData['Featured'] as String?;
    _featuredAr = snapshotData['FeaturedAr'] as String?;
    _sar = snapshotData['SAR'] as String?;
    _sARAr = snapshotData['SARAr'] as String?;
    _deletedProducts = snapshotData['DeletedProducts'] as String?;
    _deletedProductsAr = snapshotData['DeletedProductsAr'] as String?;
    _editProduct = snapshotData['EditProduct'] as String?;
    _editProductAr = snapshotData['EditProductAr'] as String?;
    _uploadMedia = snapshotData['UploadMedia'] as String?;
    _uploadMediaAr = snapshotData['UploadMediaAr'] as String?;
    _addImage = snapshotData['AddImage'] as String?;
    _addImageAr = snapshotData['AddImageAr'] as String?;
    _productName = snapshotData['ProductName'] as String?;
    _productNameAr = snapshotData['ProductNameAr'] as String?;
    _price = snapshotData['Price'] as String?;
    _priceAr = snapshotData['PriceAr'] as String?;
    _description = snapshotData['Description'] as String?;
    _descriptionAr = snapshotData['DescriptionAr'] as String?;
    _offerPercentage = snapshotData['OfferPercentage'] as String?;
    _offerPercentageAr = snapshotData['OfferPercentageAr'] as String?;
    _applyOffer = snapshotData['ApplyOffer'] as String?;
    _applyOfferAr = snapshotData['ApplyOfferAr'] as String?;
    _totalPrice = snapshotData['TotalPrice'] as String?;
    _totalPriceAr = snapshotData['TotalPriceAr'] as String?;
    _loginCode = snapshotData['LoginCode'] as String?;
    _loginCodeAr = snapshotData['LoginCodeAr'] as String?;
    _resend = snapshotData['Resend'] as String?;
    _resendAr = snapshotData['ResendAr'] as String?;
    _login = snapshotData['Login'] as String?;
    _loginAr = snapshotData['LoginAr'] as String?;
    _enterYourPhone = snapshotData['EnterYourPhone'] as String?;
    _enterYourPhoneAr = snapshotData['EnterYourPhoneAr'] as String?;
    _register = snapshotData['Register'] as String?;
    _registerAr = snapshotData['RegisterAr'] as String?;
    _approved = snapshotData['Approved'] as String?;
    _approvedAr = snapshotData['ApprovedAr'] as String?;
    _manageOffers = snapshotData['ManageOffers'] as String?;
    _manageOffersAr = snapshotData['ManageOffersAr'] as String?;
    _manageProducts = snapshotData['ManageProducts'] as String?;
    _manageProductsAr = snapshotData['ManageProductsAr'] as String?;
    _addNewProduct = snapshotData['AddNewProduct'] as String?;
    _addNewProductAr = snapshotData['AddNewProductAr'] as String?;
    _notifications = snapshotData['Notifications'] as String?;
    _notificationsAr = snapshotData['NotificationsAr'] as String?;
    _paymentProfile = snapshotData['PaymentProfile'] as String?;
    _paymentProfileAr = snapshotData['PaymentProfileAr'] as String?;
    _paymentInfo = snapshotData['PaymentInfo'] as String?;
    _paymentInfoAr = snapshotData['PaymentInfoAr'] as String?;
    _branchName = snapshotData['BranchName'] as String?;
    _branchNameAr = snapshotData['BranchNameAr'] as String?;
    _amount = snapshotData['Amount'] as String?;
    _amountAr = snapshotData['AmountAr'] as String?;
    _appPercentage = snapshotData['AppPercentage'] as String?;
    _appPercentageAr = snapshotData['AppPercentageAr'] as String?;
    _supplierPercentage = snapshotData['SupplierPercentage'] as String?;
    _supplierPercentageAr = snapshotData['SupplierPercentageAr'] as String?;
    _total = snapshotData['Total'] as String?;
    _totalAr = snapshotData['TotalAr'] as String?;
    _ratingsReviews = snapshotData['RatingsReviews'] as String?;
    _ratingsReviewsAr = snapshotData['RatingsReviewsAr'] as String?;
    _ratings = snapshotData['Ratings'] as String?;
    _ratingsAr = snapshotData['RatingsAr'] as String?;
    _registerCafeRestaurant = snapshotData['RegisterCafeRestaurant'] as String?;
    _registerCafeRestaurantAr =
        snapshotData['RegisterCafeRestaurantAr'] as String?;
    _type = snapshotData['Type'] as String?;
    _typeAr = snapshotData['TypeAr'] as String?;
    _restaurant = snapshotData['Restaurant'] as String?;
    _restaurantAr = snapshotData['RestaurantAr'] as String?;
    _cafe = snapshotData['Cafe'] as String?;
    _cafeAr = snapshotData['CafeAr'] as String?;
    _placeName = snapshotData['PlaceName'] as String?;
    _placeNameAr = snapshotData['PlaceNameAr'] as String?;
    _displayPicture = snapshotData['DisplayPicture'] as String?;
    _displayPictureAr = snapshotData['DisplayPictureAr'] as String?;
    _tradeLicense = snapshotData['TradeLicense'] as String?;
    _tradeLicenseAr = snapshotData['TradeLicenseAr'] as String?;
    _addBranche = snapshotData['AddBranche'] as String?;
    _addBrancheAr = snapshotData['AddBrancheAr'] as String?;
    _addLocation = snapshotData['AddLocation'] as String?;
    _addLocationAr = snapshotData['AddLocationAr'] as String?;
    _add = snapshotData['Add'] as String?;
    _addAr = snapshotData['AddAr'] as String?;
    _brancheAddress = snapshotData['BrancheAddress'] as String?;
    _brancheAddressAr = snapshotData['BrancheAddressAr'] as String?;
    _selectProducts = snapshotData['SelectProducts'] as String?;
    _selectProductsAr = snapshotData['SelectProductsAr'] as String?;
    _addProduct = snapshotData['AddProduct'] as String?;
    _addProductAr = snapshotData['AddProductAr'] as String?;
    _editProfile = snapshotData['EditProfile'] as String?;
    _editProfileAr = snapshotData['EditProfileAr'] as String?;
    _editDisplayImage = snapshotData['EditDisplayImage'] as String?;
    _editDisplayImageAr = snapshotData['EditDisplayImageAr'] as String?;
    _fullName = snapshotData['FullName'] as String?;
    _fullNameAr = snapshotData['FullNameAr'] as String?;
    _attachYourTradeLicense = snapshotData['AttachYourTradeLicense'] as String?;
    _attachYourTradeLicenseAr =
        snapshotData['AttachYourTradeLicenseAr'] as String?;
    _updateAr = snapshotData['UpdateAr'] as String?;
    _updateEn = snapshotData['UpdateEn'] as String?;
    _featuredProducts = snapshotData['FeaturedProducts'] as String?;
    _featuredProductsAr = snapshotData['FeaturedProductsAr'] as String?;
    _manageOrders = snapshotData['ManageOrders'] as String?;
    _manageOrdersAr = snapshotData['ManageOrdersAr'] as String?;
    _orderTime = snapshotData['OrderTime'] as String?;
    _orderTimeAr = snapshotData['OrderTimeAr'] as String?;
    _totalProducts = snapshotData['TotalProducts'] as String?;
    _totalProductsAr = snapshotData['TotalProductsAr'] as String?;
    _myOrders = snapshotData['MyOrders'] as String?;
    _myOrdersAr = snapshotData['MyOrdersAr'] as String?;
    _orderDetails = snapshotData['OrderDetails'] as String?;
    _orderDetailsAr = snapshotData['OrderDetailsAr'] as String?;
    _time = snapshotData['Time'] as String?;
    _timeAr = snapshotData['TimeAr'] as String?;
    _status = snapshotData['Status'] as String?;
    _statusAr = snapshotData['StatusAr'] as String?;
    _paymentMethod = snapshotData['PaymentMethod'] as String?;
    _paymentMethodAr = snapshotData['PaymentMethodAr'] as String?;
    _branche = snapshotData['Branche'] as String?;
    _brancheAr = snapshotData['BrancheAr'] as String?;
    _userInformation = snapshotData['UserInformation'] as String?;
    _userInformationAr = snapshotData['UserInformationAr'] as String?;
    _orderItems = snapshotData['OrderItems'] as String?;
    _orderItemsAr = snapshotData['OrderItemsAr'] as String?;
    _quantity = snapshotData['Quantity'] as String?;
    _quantityAr = snapshotData['QuantityAr'] as String?;
    _subTotal = snapshotData['SubTotal'] as String?;
    _subTotalAr = snapshotData['SubTotalAr'] as String?;
    _orderSummary = snapshotData['OrderSummary'] as String?;
    _orderSummaryAr = snapshotData['OrderSummaryAr'] as String?;
    _markascompleted = snapshotData['MARKASCOMPLETED'] as String?;
    _mARKASCOMPLETEDAr = snapshotData['MARKASCOMPLETEDAr'] as String?;
    _markasready = snapshotData['MARKASREADY'] as String?;
    _mARKASREADYAr = snapshotData['MARKASREADYAr'] as String?;
    _acceptedOrder = snapshotData['AcceptedOrder'] as String?;
    _acceptedOrderAr = snapshotData['AcceptedOrderAr'] as String?;
    _cancelOrder = snapshotData['CancelOrder'] as String?;
    _cancelOrderAr = snapshotData['CancelOrderAr'] as String?;
    _myInformation = snapshotData['MyInformation'] as String?;
    _myInformationAr = snapshotData['MyInformationAr'] as String?;
    _manageAccount = snapshotData['ManageAccount'] as String?;
    _manageAccountAr = snapshotData['ManageAccountAr'] as String?;
    _profile = snapshotData['Profile'] as String?;
    _profileAr = snapshotData['ProfileAr'] as String?;
    _aboutAboutUs = snapshotData['AboutAboutUs'] as String?;
    _aboutAboutUsAr = snapshotData['AboutAboutUsAr'] as String?;
    _home = snapshotData['Home'] as String?;
    _homeAr = snapshotData['HomeAr'] as String?;
    _articles = snapshotData['Articles'] as String?;
    _articlesAr = snapshotData['ArticlesAr'] as String?;
    _imageGallery = snapshotData['ImageGallery'] as String?;
    _imageGalleryAr = snapshotData['ImageGalleryAr'] as String?;
    _faq = snapshotData['FAQ'] as String?;
    _fAQAr = snapshotData['FAQAr'] as String?;
    _missionVision = snapshotData['MissionVision'] as String?;
    _missionVisionAr = snapshotData['MissionVisionAr'] as String?;
    _contactUs = snapshotData['ContactUs'] as String?;
    _contactUsAr = snapshotData['ContactUsAr'] as String?;
    _privacyPolicy = snapshotData['PrivacyPolicy'] as String?;
    _privacyPolicyAr = snapshotData['PrivacyPolicyAr'] as String?;
    _termsConditions = snapshotData['TermsConditions'] as String?;
    _termsConditionsAr = snapshotData['TermsConditionsAr'] as String?;
    _settings = snapshotData['Settings'] as String?;
    _settingsAr = snapshotData['SettingsAr'] as String?;
    _logout = snapshotData['Logout'] as String?;
    _logoutAr = snapshotData['LogoutAr'] as String?;
    _followUs = snapshotData['FollowUs'] as String?;
    _followUsAr = snapshotData['FollowUsAr'] as String?;
    _articlesDetails = snapshotData['ArticlesDetails'] as String?;
    _articlesDetailsAr = snapshotData['ArticlesDetailsAr'] as String?;
    _articlesPublishedby = snapshotData['ArticlesPublishedby'] as String?;
    _articlesPublishedbyAr = snapshotData['ArticlesPublishedbyAr'] as String?;
    _selectLanguage = snapshotData['SelectLanguage'] as String?;
    _selectLanguageAr = snapshotData['SelectLanguageAr'] as String?;
    _english = snapshotData['English'] as String?;
    _englishAr = snapshotData['EnglishAr'] as String?;
    _arabic = snapshotData['Arabic'] as String?;
    _arabicAr = snapshotData['ArabicAr'] as String?;
    _continueApp = snapshotData['ContinueApp'] as String?;
    _continueAppAr = snapshotData['ContinueAppAr'] as String?;
    _yes = snapshotData['Yes'] as String?;
    _yesAr = snapshotData['YesAr'] as String?;
    _no = snapshotData['No'] as String?;
    _noAr = snapshotData['NoAr'] as String?;
    _hintaccepttheorder = snapshotData['hintaccepttheorder'] as String?;
    _hintaccepttheorderAr = snapshotData['hintaccepttheorderAr'] as String?;
    _sureCancelOrder = snapshotData['SureCancelOrder'] as String?;
    _sureCancelOrderAr = snapshotData['SureCancelOrderAr'] as String?;
    _completedOrder = snapshotData['CompletedOrder'] as String?;
    _completedOrderAr = snapshotData['CompletedOrderAr'] as String?;
    _sureCompleteOrder = snapshotData['SureCompleteOrder'] as String?;
    _sureCompleteOrderAr = snapshotData['SureCompleteOrderAr'] as String?;
    _completDataError = snapshotData['completDataError'] as String?;
    _completDataErrorAr = snapshotData['completDataErrorAr'] as String?;
    _okApp = snapshotData['OkApp'] as String?;
    _okAppAr = snapshotData['OkAppAr'] as String?;
    _featureProduct = snapshotData['FeatureProduct'] as String?;
    _featureProductAr = snapshotData['FeatureProductAr'] as String?;
    _offerProduct = snapshotData['OfferProduct'] as String?;
    _offerProductAr = snapshotData['OfferProductAr'] as String?;
    _manageProduct = snapshotData['ManageProduct'] as String?;
    _manageProductAr = snapshotData['ManageProductAr'] as String?;
    _readyOrder = snapshotData['ReadyOrder'] as String?;
    _readyOrderAr = snapshotData['ReadyOrderAr'] as String?;
    _address = snapshotData['Address'] as String?;
    _addressAr = snapshotData['AddressAr'] as String?;
    _addressArabic = snapshotData['AddressArabic'] as String?;
    _addressArabicAr = snapshotData['AddressArabicAr'] as String?;
    _pymentCreditCard = snapshotData['PymentCreditCard'] as String?;
    _pymentCreditCardAr = snapshotData['PymentCreditCardAr'] as String?;
    _aboutData = snapshotData['AboutData'] as String?;
    _aboutDataAr = snapshotData['AboutDataAr'] as String?;
    _submit = snapshotData['Submit'] as String?;
    _submitAr = snapshotData['SubmitAr'] as String?;
    _subject = snapshotData['Subject'] as String?;
    _subjectAr = snapshotData['SubjectAr'] as String?;
    _name = snapshotData['Name'] as String?;
    _nameAr = snapshotData['NameAr'] as String?;
    _email = snapshotData['Email'] as String?;
    _emailAr = snapshotData['EmailAr'] as String?;
    _comments = snapshotData['Comments'] as String?;
    _commentsAr = snapshotData['CommentsAr'] as String?;
    _fullNameArabic = snapshotData['FullNameArabic'] as String?;
    _fullNameArabicAr = snapshotData['FullNameArabicAr'] as String?;
    _historyPayment = snapshotData['HistoryPayment'] as String?;
    _historyPaymentAr = snapshotData['HistoryPaymentAr'] as String?;
    _appNameSupplier = snapshotData['AppNameSupplier'] as String?;
    _appNameSupplierAr = snapshotData['AppNameSupplierAr'] as String?;
    _readyButNotRecived = snapshotData['ReadyButNotRecived'] as String?;
    _readyButNotRecivedAr = snapshotData['ReadyButNotRecivedAr'] as String?;
    _deleteAccount = snapshotData['DeleteAccount'] as String?;
    _deleteAccountAr = snapshotData['DeleteAccountAr'] as String?;
    _deleteMas = snapshotData['deleteMas'] as String?;
    _deleteMasAr = snapshotData['deleteMasAr'] as String?;
    _deleteMessage = snapshotData['DeleteMessage'] as String?;
    _deleteMessageAr = snapshotData['DeleteMessageAr'] as String?;
    _next = snapshotData['next'] as String?;
    _nextAr = snapshotData['nextAr'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Translator');

  static Stream<TranslatorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TranslatorRecord.fromSnapshot(s));

  static Future<TranslatorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TranslatorRecord.fromSnapshot(s));

  static TranslatorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TranslatorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TranslatorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TranslatorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TranslatorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TranslatorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTranslatorRecordData({
  String? deleted,
  String? deletedAr,
  String? featured,
  String? featuredAr,
  String? sar,
  String? sARAr,
  String? deletedProducts,
  String? deletedProductsAr,
  String? editProduct,
  String? editProductAr,
  String? uploadMedia,
  String? uploadMediaAr,
  String? addImage,
  String? addImageAr,
  String? productName,
  String? productNameAr,
  String? price,
  String? priceAr,
  String? description,
  String? descriptionAr,
  String? offerPercentage,
  String? offerPercentageAr,
  String? applyOffer,
  String? applyOfferAr,
  String? totalPrice,
  String? totalPriceAr,
  String? loginCode,
  String? loginCodeAr,
  String? resend,
  String? resendAr,
  String? login,
  String? loginAr,
  String? enterYourPhone,
  String? enterYourPhoneAr,
  String? register,
  String? registerAr,
  String? approved,
  String? approvedAr,
  String? manageOffers,
  String? manageOffersAr,
  String? manageProducts,
  String? manageProductsAr,
  String? addNewProduct,
  String? addNewProductAr,
  String? notifications,
  String? notificationsAr,
  String? paymentProfile,
  String? paymentProfileAr,
  String? paymentInfo,
  String? paymentInfoAr,
  String? branchName,
  String? branchNameAr,
  String? amount,
  String? amountAr,
  String? appPercentage,
  String? appPercentageAr,
  String? supplierPercentage,
  String? supplierPercentageAr,
  String? total,
  String? totalAr,
  String? ratingsReviews,
  String? ratingsReviewsAr,
  String? ratings,
  String? ratingsAr,
  String? registerCafeRestaurant,
  String? registerCafeRestaurantAr,
  String? type,
  String? typeAr,
  String? restaurant,
  String? restaurantAr,
  String? cafe,
  String? cafeAr,
  String? placeName,
  String? placeNameAr,
  String? displayPicture,
  String? displayPictureAr,
  String? tradeLicense,
  String? tradeLicenseAr,
  String? addBranche,
  String? addBrancheAr,
  String? addLocation,
  String? addLocationAr,
  String? add,
  String? addAr,
  String? brancheAddress,
  String? brancheAddressAr,
  String? selectProducts,
  String? selectProductsAr,
  String? addProduct,
  String? addProductAr,
  String? editProfile,
  String? editProfileAr,
  String? editDisplayImage,
  String? editDisplayImageAr,
  String? fullName,
  String? fullNameAr,
  String? attachYourTradeLicense,
  String? attachYourTradeLicenseAr,
  String? updateAr,
  String? updateEn,
  String? featuredProducts,
  String? featuredProductsAr,
  String? manageOrders,
  String? manageOrdersAr,
  String? orderTime,
  String? orderTimeAr,
  String? totalProducts,
  String? totalProductsAr,
  String? myOrders,
  String? myOrdersAr,
  String? orderDetails,
  String? orderDetailsAr,
  String? time,
  String? timeAr,
  String? status,
  String? statusAr,
  String? paymentMethod,
  String? paymentMethodAr,
  String? branche,
  String? brancheAr,
  String? userInformation,
  String? userInformationAr,
  String? orderItems,
  String? orderItemsAr,
  String? quantity,
  String? quantityAr,
  String? subTotal,
  String? subTotalAr,
  String? orderSummary,
  String? orderSummaryAr,
  String? markascompleted,
  String? mARKASCOMPLETEDAr,
  String? markasready,
  String? mARKASREADYAr,
  String? acceptedOrder,
  String? acceptedOrderAr,
  String? cancelOrder,
  String? cancelOrderAr,
  String? myInformation,
  String? myInformationAr,
  String? manageAccount,
  String? manageAccountAr,
  String? profile,
  String? profileAr,
  String? aboutAboutUs,
  String? aboutAboutUsAr,
  String? home,
  String? homeAr,
  String? articles,
  String? articlesAr,
  String? imageGallery,
  String? imageGalleryAr,
  String? faq,
  String? fAQAr,
  String? missionVision,
  String? missionVisionAr,
  String? contactUs,
  String? contactUsAr,
  String? privacyPolicy,
  String? privacyPolicyAr,
  String? termsConditions,
  String? termsConditionsAr,
  String? settings,
  String? settingsAr,
  String? logout,
  String? logoutAr,
  String? followUs,
  String? followUsAr,
  String? articlesDetails,
  String? articlesDetailsAr,
  String? articlesPublishedby,
  String? articlesPublishedbyAr,
  String? selectLanguage,
  String? selectLanguageAr,
  String? english,
  String? englishAr,
  String? arabic,
  String? arabicAr,
  String? continueApp,
  String? continueAppAr,
  String? yes,
  String? yesAr,
  String? no,
  String? noAr,
  String? hintaccepttheorder,
  String? hintaccepttheorderAr,
  String? sureCancelOrder,
  String? sureCancelOrderAr,
  String? completedOrder,
  String? completedOrderAr,
  String? sureCompleteOrder,
  String? sureCompleteOrderAr,
  String? completDataError,
  String? completDataErrorAr,
  String? okApp,
  String? okAppAr,
  String? featureProduct,
  String? featureProductAr,
  String? offerProduct,
  String? offerProductAr,
  String? manageProduct,
  String? manageProductAr,
  String? readyOrder,
  String? readyOrderAr,
  String? address,
  String? addressAr,
  String? addressArabic,
  String? addressArabicAr,
  String? pymentCreditCard,
  String? pymentCreditCardAr,
  String? aboutData,
  String? aboutDataAr,
  String? submit,
  String? submitAr,
  String? subject,
  String? subjectAr,
  String? name,
  String? nameAr,
  String? email,
  String? emailAr,
  String? comments,
  String? commentsAr,
  String? fullNameArabic,
  String? fullNameArabicAr,
  String? historyPayment,
  String? historyPaymentAr,
  String? appNameSupplier,
  String? appNameSupplierAr,
  String? readyButNotRecived,
  String? readyButNotRecivedAr,
  String? deleteAccount,
  String? deleteAccountAr,
  String? deleteMas,
  String? deleteMasAr,
  String? deleteMessage,
  String? deleteMessageAr,
  String? next,
  String? nextAr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Deleted': deleted,
      'DeletedAr': deletedAr,
      'Featured': featured,
      'FeaturedAr': featuredAr,
      'SAR': sar,
      'SARAr': sARAr,
      'DeletedProducts': deletedProducts,
      'DeletedProductsAr': deletedProductsAr,
      'EditProduct': editProduct,
      'EditProductAr': editProductAr,
      'UploadMedia': uploadMedia,
      'UploadMediaAr': uploadMediaAr,
      'AddImage': addImage,
      'AddImageAr': addImageAr,
      'ProductName': productName,
      'ProductNameAr': productNameAr,
      'Price': price,
      'PriceAr': priceAr,
      'Description': description,
      'DescriptionAr': descriptionAr,
      'OfferPercentage': offerPercentage,
      'OfferPercentageAr': offerPercentageAr,
      'ApplyOffer': applyOffer,
      'ApplyOfferAr': applyOfferAr,
      'TotalPrice': totalPrice,
      'TotalPriceAr': totalPriceAr,
      'LoginCode': loginCode,
      'LoginCodeAr': loginCodeAr,
      'Resend': resend,
      'ResendAr': resendAr,
      'Login': login,
      'LoginAr': loginAr,
      'EnterYourPhone': enterYourPhone,
      'EnterYourPhoneAr': enterYourPhoneAr,
      'Register': register,
      'RegisterAr': registerAr,
      'Approved': approved,
      'ApprovedAr': approvedAr,
      'ManageOffers': manageOffers,
      'ManageOffersAr': manageOffersAr,
      'ManageProducts': manageProducts,
      'ManageProductsAr': manageProductsAr,
      'AddNewProduct': addNewProduct,
      'AddNewProductAr': addNewProductAr,
      'Notifications': notifications,
      'NotificationsAr': notificationsAr,
      'PaymentProfile': paymentProfile,
      'PaymentProfileAr': paymentProfileAr,
      'PaymentInfo': paymentInfo,
      'PaymentInfoAr': paymentInfoAr,
      'BranchName': branchName,
      'BranchNameAr': branchNameAr,
      'Amount': amount,
      'AmountAr': amountAr,
      'AppPercentage': appPercentage,
      'AppPercentageAr': appPercentageAr,
      'SupplierPercentage': supplierPercentage,
      'SupplierPercentageAr': supplierPercentageAr,
      'Total': total,
      'TotalAr': totalAr,
      'RatingsReviews': ratingsReviews,
      'RatingsReviewsAr': ratingsReviewsAr,
      'Ratings': ratings,
      'RatingsAr': ratingsAr,
      'RegisterCafeRestaurant': registerCafeRestaurant,
      'RegisterCafeRestaurantAr': registerCafeRestaurantAr,
      'Type': type,
      'TypeAr': typeAr,
      'Restaurant': restaurant,
      'RestaurantAr': restaurantAr,
      'Cafe': cafe,
      'CafeAr': cafeAr,
      'PlaceName': placeName,
      'PlaceNameAr': placeNameAr,
      'DisplayPicture': displayPicture,
      'DisplayPictureAr': displayPictureAr,
      'TradeLicense': tradeLicense,
      'TradeLicenseAr': tradeLicenseAr,
      'AddBranche': addBranche,
      'AddBrancheAr': addBrancheAr,
      'AddLocation': addLocation,
      'AddLocationAr': addLocationAr,
      'Add': add,
      'AddAr': addAr,
      'BrancheAddress': brancheAddress,
      'BrancheAddressAr': brancheAddressAr,
      'SelectProducts': selectProducts,
      'SelectProductsAr': selectProductsAr,
      'AddProduct': addProduct,
      'AddProductAr': addProductAr,
      'EditProfile': editProfile,
      'EditProfileAr': editProfileAr,
      'EditDisplayImage': editDisplayImage,
      'EditDisplayImageAr': editDisplayImageAr,
      'FullName': fullName,
      'FullNameAr': fullNameAr,
      'AttachYourTradeLicense': attachYourTradeLicense,
      'AttachYourTradeLicenseAr': attachYourTradeLicenseAr,
      'UpdateAr': updateAr,
      'UpdateEn': updateEn,
      'FeaturedProducts': featuredProducts,
      'FeaturedProductsAr': featuredProductsAr,
      'ManageOrders': manageOrders,
      'ManageOrdersAr': manageOrdersAr,
      'OrderTime': orderTime,
      'OrderTimeAr': orderTimeAr,
      'TotalProducts': totalProducts,
      'TotalProductsAr': totalProductsAr,
      'MyOrders': myOrders,
      'MyOrdersAr': myOrdersAr,
      'OrderDetails': orderDetails,
      'OrderDetailsAr': orderDetailsAr,
      'Time': time,
      'TimeAr': timeAr,
      'Status': status,
      'StatusAr': statusAr,
      'PaymentMethod': paymentMethod,
      'PaymentMethodAr': paymentMethodAr,
      'Branche': branche,
      'BrancheAr': brancheAr,
      'UserInformation': userInformation,
      'UserInformationAr': userInformationAr,
      'OrderItems': orderItems,
      'OrderItemsAr': orderItemsAr,
      'Quantity': quantity,
      'QuantityAr': quantityAr,
      'SubTotal': subTotal,
      'SubTotalAr': subTotalAr,
      'OrderSummary': orderSummary,
      'OrderSummaryAr': orderSummaryAr,
      'MARKASCOMPLETED': markascompleted,
      'MARKASCOMPLETEDAr': mARKASCOMPLETEDAr,
      'MARKASREADY': markasready,
      'MARKASREADYAr': mARKASREADYAr,
      'AcceptedOrder': acceptedOrder,
      'AcceptedOrderAr': acceptedOrderAr,
      'CancelOrder': cancelOrder,
      'CancelOrderAr': cancelOrderAr,
      'MyInformation': myInformation,
      'MyInformationAr': myInformationAr,
      'ManageAccount': manageAccount,
      'ManageAccountAr': manageAccountAr,
      'Profile': profile,
      'ProfileAr': profileAr,
      'AboutAboutUs': aboutAboutUs,
      'AboutAboutUsAr': aboutAboutUsAr,
      'Home': home,
      'HomeAr': homeAr,
      'Articles': articles,
      'ArticlesAr': articlesAr,
      'ImageGallery': imageGallery,
      'ImageGalleryAr': imageGalleryAr,
      'FAQ': faq,
      'FAQAr': fAQAr,
      'MissionVision': missionVision,
      'MissionVisionAr': missionVisionAr,
      'ContactUs': contactUs,
      'ContactUsAr': contactUsAr,
      'PrivacyPolicy': privacyPolicy,
      'PrivacyPolicyAr': privacyPolicyAr,
      'TermsConditions': termsConditions,
      'TermsConditionsAr': termsConditionsAr,
      'Settings': settings,
      'SettingsAr': settingsAr,
      'Logout': logout,
      'LogoutAr': logoutAr,
      'FollowUs': followUs,
      'FollowUsAr': followUsAr,
      'ArticlesDetails': articlesDetails,
      'ArticlesDetailsAr': articlesDetailsAr,
      'ArticlesPublishedby': articlesPublishedby,
      'ArticlesPublishedbyAr': articlesPublishedbyAr,
      'SelectLanguage': selectLanguage,
      'SelectLanguageAr': selectLanguageAr,
      'English': english,
      'EnglishAr': englishAr,
      'Arabic': arabic,
      'ArabicAr': arabicAr,
      'ContinueApp': continueApp,
      'ContinueAppAr': continueAppAr,
      'Yes': yes,
      'YesAr': yesAr,
      'No': no,
      'NoAr': noAr,
      'hintaccepttheorder': hintaccepttheorder,
      'hintaccepttheorderAr': hintaccepttheorderAr,
      'SureCancelOrder': sureCancelOrder,
      'SureCancelOrderAr': sureCancelOrderAr,
      'CompletedOrder': completedOrder,
      'CompletedOrderAr': completedOrderAr,
      'SureCompleteOrder': sureCompleteOrder,
      'SureCompleteOrderAr': sureCompleteOrderAr,
      'completDataError': completDataError,
      'completDataErrorAr': completDataErrorAr,
      'OkApp': okApp,
      'OkAppAr': okAppAr,
      'FeatureProduct': featureProduct,
      'FeatureProductAr': featureProductAr,
      'OfferProduct': offerProduct,
      'OfferProductAr': offerProductAr,
      'ManageProduct': manageProduct,
      'ManageProductAr': manageProductAr,
      'ReadyOrder': readyOrder,
      'ReadyOrderAr': readyOrderAr,
      'Address': address,
      'AddressAr': addressAr,
      'AddressArabic': addressArabic,
      'AddressArabicAr': addressArabicAr,
      'PymentCreditCard': pymentCreditCard,
      'PymentCreditCardAr': pymentCreditCardAr,
      'AboutData': aboutData,
      'AboutDataAr': aboutDataAr,
      'Submit': submit,
      'SubmitAr': submitAr,
      'Subject': subject,
      'SubjectAr': subjectAr,
      'Name': name,
      'NameAr': nameAr,
      'Email': email,
      'EmailAr': emailAr,
      'Comments': comments,
      'CommentsAr': commentsAr,
      'FullNameArabic': fullNameArabic,
      'FullNameArabicAr': fullNameArabicAr,
      'HistoryPayment': historyPayment,
      'HistoryPaymentAr': historyPaymentAr,
      'AppNameSupplier': appNameSupplier,
      'AppNameSupplierAr': appNameSupplierAr,
      'ReadyButNotRecived': readyButNotRecived,
      'ReadyButNotRecivedAr': readyButNotRecivedAr,
      'DeleteAccount': deleteAccount,
      'DeleteAccountAr': deleteAccountAr,
      'deleteMas': deleteMas,
      'deleteMasAr': deleteMasAr,
      'DeleteMessage': deleteMessage,
      'DeleteMessageAr': deleteMessageAr,
      'next': next,
      'nextAr': nextAr,
    }.withoutNulls,
  );

  return firestoreData;
}

class TranslatorRecordDocumentEquality implements Equality<TranslatorRecord> {
  const TranslatorRecordDocumentEquality();

  @override
  bool equals(TranslatorRecord? e1, TranslatorRecord? e2) {
    return e1?.deleted == e2?.deleted &&
        e1?.deletedAr == e2?.deletedAr &&
        e1?.featured == e2?.featured &&
        e1?.featuredAr == e2?.featuredAr &&
        e1?.sar == e2?.sar &&
        e1?.sARAr == e2?.sARAr &&
        e1?.deletedProducts == e2?.deletedProducts &&
        e1?.deletedProductsAr == e2?.deletedProductsAr &&
        e1?.editProduct == e2?.editProduct &&
        e1?.editProductAr == e2?.editProductAr &&
        e1?.uploadMedia == e2?.uploadMedia &&
        e1?.uploadMediaAr == e2?.uploadMediaAr &&
        e1?.addImage == e2?.addImage &&
        e1?.addImageAr == e2?.addImageAr &&
        e1?.productName == e2?.productName &&
        e1?.productNameAr == e2?.productNameAr &&
        e1?.price == e2?.price &&
        e1?.priceAr == e2?.priceAr &&
        e1?.description == e2?.description &&
        e1?.descriptionAr == e2?.descriptionAr &&
        e1?.offerPercentage == e2?.offerPercentage &&
        e1?.offerPercentageAr == e2?.offerPercentageAr &&
        e1?.applyOffer == e2?.applyOffer &&
        e1?.applyOfferAr == e2?.applyOfferAr &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.totalPriceAr == e2?.totalPriceAr &&
        e1?.loginCode == e2?.loginCode &&
        e1?.loginCodeAr == e2?.loginCodeAr &&
        e1?.resend == e2?.resend &&
        e1?.resendAr == e2?.resendAr &&
        e1?.login == e2?.login &&
        e1?.loginAr == e2?.loginAr &&
        e1?.enterYourPhone == e2?.enterYourPhone &&
        e1?.enterYourPhoneAr == e2?.enterYourPhoneAr &&
        e1?.register == e2?.register &&
        e1?.registerAr == e2?.registerAr &&
        e1?.approved == e2?.approved &&
        e1?.approvedAr == e2?.approvedAr &&
        e1?.manageOffers == e2?.manageOffers &&
        e1?.manageOffersAr == e2?.manageOffersAr &&
        e1?.manageProducts == e2?.manageProducts &&
        e1?.manageProductsAr == e2?.manageProductsAr &&
        e1?.addNewProduct == e2?.addNewProduct &&
        e1?.addNewProductAr == e2?.addNewProductAr &&
        e1?.notifications == e2?.notifications &&
        e1?.notificationsAr == e2?.notificationsAr &&
        e1?.paymentProfile == e2?.paymentProfile &&
        e1?.paymentProfileAr == e2?.paymentProfileAr &&
        e1?.paymentInfo == e2?.paymentInfo &&
        e1?.paymentInfoAr == e2?.paymentInfoAr &&
        e1?.branchName == e2?.branchName &&
        e1?.branchNameAr == e2?.branchNameAr &&
        e1?.amount == e2?.amount &&
        e1?.amountAr == e2?.amountAr &&
        e1?.appPercentage == e2?.appPercentage &&
        e1?.appPercentageAr == e2?.appPercentageAr &&
        e1?.supplierPercentage == e2?.supplierPercentage &&
        e1?.supplierPercentageAr == e2?.supplierPercentageAr &&
        e1?.total == e2?.total &&
        e1?.totalAr == e2?.totalAr &&
        e1?.ratingsReviews == e2?.ratingsReviews &&
        e1?.ratingsReviewsAr == e2?.ratingsReviewsAr &&
        e1?.ratings == e2?.ratings &&
        e1?.ratingsAr == e2?.ratingsAr &&
        e1?.registerCafeRestaurant == e2?.registerCafeRestaurant &&
        e1?.registerCafeRestaurantAr == e2?.registerCafeRestaurantAr &&
        e1?.type == e2?.type &&
        e1?.typeAr == e2?.typeAr &&
        e1?.restaurant == e2?.restaurant &&
        e1?.restaurantAr == e2?.restaurantAr &&
        e1?.cafe == e2?.cafe &&
        e1?.cafeAr == e2?.cafeAr &&
        e1?.placeName == e2?.placeName &&
        e1?.placeNameAr == e2?.placeNameAr &&
        e1?.displayPicture == e2?.displayPicture &&
        e1?.displayPictureAr == e2?.displayPictureAr &&
        e1?.tradeLicense == e2?.tradeLicense &&
        e1?.tradeLicenseAr == e2?.tradeLicenseAr &&
        e1?.addBranche == e2?.addBranche &&
        e1?.addBrancheAr == e2?.addBrancheAr &&
        e1?.addLocation == e2?.addLocation &&
        e1?.addLocationAr == e2?.addLocationAr &&
        e1?.add == e2?.add &&
        e1?.addAr == e2?.addAr &&
        e1?.brancheAddress == e2?.brancheAddress &&
        e1?.brancheAddressAr == e2?.brancheAddressAr &&
        e1?.selectProducts == e2?.selectProducts &&
        e1?.selectProductsAr == e2?.selectProductsAr &&
        e1?.addProduct == e2?.addProduct &&
        e1?.addProductAr == e2?.addProductAr &&
        e1?.editProfile == e2?.editProfile &&
        e1?.editProfileAr == e2?.editProfileAr &&
        e1?.editDisplayImage == e2?.editDisplayImage &&
        e1?.editDisplayImageAr == e2?.editDisplayImageAr &&
        e1?.fullName == e2?.fullName &&
        e1?.fullNameAr == e2?.fullNameAr &&
        e1?.attachYourTradeLicense == e2?.attachYourTradeLicense &&
        e1?.attachYourTradeLicenseAr == e2?.attachYourTradeLicenseAr &&
        e1?.updateAr == e2?.updateAr &&
        e1?.updateEn == e2?.updateEn &&
        e1?.featuredProducts == e2?.featuredProducts &&
        e1?.featuredProductsAr == e2?.featuredProductsAr &&
        e1?.manageOrders == e2?.manageOrders &&
        e1?.manageOrdersAr == e2?.manageOrdersAr &&
        e1?.orderTime == e2?.orderTime &&
        e1?.orderTimeAr == e2?.orderTimeAr &&
        e1?.totalProducts == e2?.totalProducts &&
        e1?.totalProductsAr == e2?.totalProductsAr &&
        e1?.myOrders == e2?.myOrders &&
        e1?.myOrdersAr == e2?.myOrdersAr &&
        e1?.orderDetails == e2?.orderDetails &&
        e1?.orderDetailsAr == e2?.orderDetailsAr &&
        e1?.time == e2?.time &&
        e1?.timeAr == e2?.timeAr &&
        e1?.status == e2?.status &&
        e1?.statusAr == e2?.statusAr &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.paymentMethodAr == e2?.paymentMethodAr &&
        e1?.branche == e2?.branche &&
        e1?.brancheAr == e2?.brancheAr &&
        e1?.userInformation == e2?.userInformation &&
        e1?.userInformationAr == e2?.userInformationAr &&
        e1?.orderItems == e2?.orderItems &&
        e1?.orderItemsAr == e2?.orderItemsAr &&
        e1?.quantity == e2?.quantity &&
        e1?.quantityAr == e2?.quantityAr &&
        e1?.subTotal == e2?.subTotal &&
        e1?.subTotalAr == e2?.subTotalAr &&
        e1?.orderSummary == e2?.orderSummary &&
        e1?.orderSummaryAr == e2?.orderSummaryAr &&
        e1?.markascompleted == e2?.markascompleted &&
        e1?.mARKASCOMPLETEDAr == e2?.mARKASCOMPLETEDAr &&
        e1?.markasready == e2?.markasready &&
        e1?.mARKASREADYAr == e2?.mARKASREADYAr &&
        e1?.acceptedOrder == e2?.acceptedOrder &&
        e1?.acceptedOrderAr == e2?.acceptedOrderAr &&
        e1?.cancelOrder == e2?.cancelOrder &&
        e1?.cancelOrderAr == e2?.cancelOrderAr &&
        e1?.myInformation == e2?.myInformation &&
        e1?.myInformationAr == e2?.myInformationAr &&
        e1?.manageAccount == e2?.manageAccount &&
        e1?.manageAccountAr == e2?.manageAccountAr &&
        e1?.profile == e2?.profile &&
        e1?.profileAr == e2?.profileAr &&
        e1?.aboutAboutUs == e2?.aboutAboutUs &&
        e1?.aboutAboutUsAr == e2?.aboutAboutUsAr &&
        e1?.home == e2?.home &&
        e1?.homeAr == e2?.homeAr &&
        e1?.articles == e2?.articles &&
        e1?.articlesAr == e2?.articlesAr &&
        e1?.imageGallery == e2?.imageGallery &&
        e1?.imageGalleryAr == e2?.imageGalleryAr &&
        e1?.faq == e2?.faq &&
        e1?.fAQAr == e2?.fAQAr &&
        e1?.missionVision == e2?.missionVision &&
        e1?.missionVisionAr == e2?.missionVisionAr &&
        e1?.contactUs == e2?.contactUs &&
        e1?.contactUsAr == e2?.contactUsAr &&
        e1?.privacyPolicy == e2?.privacyPolicy &&
        e1?.privacyPolicyAr == e2?.privacyPolicyAr &&
        e1?.termsConditions == e2?.termsConditions &&
        e1?.termsConditionsAr == e2?.termsConditionsAr &&
        e1?.settings == e2?.settings &&
        e1?.settingsAr == e2?.settingsAr &&
        e1?.logout == e2?.logout &&
        e1?.logoutAr == e2?.logoutAr &&
        e1?.followUs == e2?.followUs &&
        e1?.followUsAr == e2?.followUsAr &&
        e1?.articlesDetails == e2?.articlesDetails &&
        e1?.articlesDetailsAr == e2?.articlesDetailsAr &&
        e1?.articlesPublishedby == e2?.articlesPublishedby &&
        e1?.articlesPublishedbyAr == e2?.articlesPublishedbyAr &&
        e1?.selectLanguage == e2?.selectLanguage &&
        e1?.selectLanguageAr == e2?.selectLanguageAr &&
        e1?.english == e2?.english &&
        e1?.englishAr == e2?.englishAr &&
        e1?.arabic == e2?.arabic &&
        e1?.arabicAr == e2?.arabicAr &&
        e1?.continueApp == e2?.continueApp &&
        e1?.continueAppAr == e2?.continueAppAr &&
        e1?.yes == e2?.yes &&
        e1?.yesAr == e2?.yesAr &&
        e1?.no == e2?.no &&
        e1?.noAr == e2?.noAr &&
        e1?.hintaccepttheorder == e2?.hintaccepttheorder &&
        e1?.hintaccepttheorderAr == e2?.hintaccepttheorderAr &&
        e1?.sureCancelOrder == e2?.sureCancelOrder &&
        e1?.sureCancelOrderAr == e2?.sureCancelOrderAr &&
        e1?.completedOrder == e2?.completedOrder &&
        e1?.completedOrderAr == e2?.completedOrderAr &&
        e1?.sureCompleteOrder == e2?.sureCompleteOrder &&
        e1?.sureCompleteOrderAr == e2?.sureCompleteOrderAr &&
        e1?.completDataError == e2?.completDataError &&
        e1?.completDataErrorAr == e2?.completDataErrorAr &&
        e1?.okApp == e2?.okApp &&
        e1?.okAppAr == e2?.okAppAr &&
        e1?.featureProduct == e2?.featureProduct &&
        e1?.featureProductAr == e2?.featureProductAr &&
        e1?.offerProduct == e2?.offerProduct &&
        e1?.offerProductAr == e2?.offerProductAr &&
        e1?.manageProduct == e2?.manageProduct &&
        e1?.manageProductAr == e2?.manageProductAr &&
        e1?.readyOrder == e2?.readyOrder &&
        e1?.readyOrderAr == e2?.readyOrderAr &&
        e1?.address == e2?.address &&
        e1?.addressAr == e2?.addressAr &&
        e1?.addressArabic == e2?.addressArabic &&
        e1?.addressArabicAr == e2?.addressArabicAr &&
        e1?.pymentCreditCard == e2?.pymentCreditCard &&
        e1?.pymentCreditCardAr == e2?.pymentCreditCardAr &&
        e1?.aboutData == e2?.aboutData &&
        e1?.aboutDataAr == e2?.aboutDataAr &&
        e1?.submit == e2?.submit &&
        e1?.submitAr == e2?.submitAr &&
        e1?.subject == e2?.subject &&
        e1?.subjectAr == e2?.subjectAr &&
        e1?.name == e2?.name &&
        e1?.nameAr == e2?.nameAr &&
        e1?.email == e2?.email &&
        e1?.emailAr == e2?.emailAr &&
        e1?.comments == e2?.comments &&
        e1?.commentsAr == e2?.commentsAr &&
        e1?.fullNameArabic == e2?.fullNameArabic &&
        e1?.fullNameArabicAr == e2?.fullNameArabicAr &&
        e1?.historyPayment == e2?.historyPayment &&
        e1?.historyPaymentAr == e2?.historyPaymentAr &&
        e1?.appNameSupplier == e2?.appNameSupplier &&
        e1?.appNameSupplierAr == e2?.appNameSupplierAr &&
        e1?.readyButNotRecived == e2?.readyButNotRecived &&
        e1?.readyButNotRecivedAr == e2?.readyButNotRecivedAr &&
        e1?.deleteAccount == e2?.deleteAccount &&
        e1?.deleteAccountAr == e2?.deleteAccountAr &&
        e1?.deleteMas == e2?.deleteMas &&
        e1?.deleteMasAr == e2?.deleteMasAr &&
        e1?.deleteMessage == e2?.deleteMessage &&
        e1?.deleteMessageAr == e2?.deleteMessageAr &&
        e1?.next == e2?.next &&
        e1?.nextAr == e2?.nextAr;
  }

  @override
  int hash(TranslatorRecord? e) => const ListEquality().hash([
        e?.deleted,
        e?.deletedAr,
        e?.featured,
        e?.featuredAr,
        e?.sar,
        e?.sARAr,
        e?.deletedProducts,
        e?.deletedProductsAr,
        e?.editProduct,
        e?.editProductAr,
        e?.uploadMedia,
        e?.uploadMediaAr,
        e?.addImage,
        e?.addImageAr,
        e?.productName,
        e?.productNameAr,
        e?.price,
        e?.priceAr,
        e?.description,
        e?.descriptionAr,
        e?.offerPercentage,
        e?.offerPercentageAr,
        e?.applyOffer,
        e?.applyOfferAr,
        e?.totalPrice,
        e?.totalPriceAr,
        e?.loginCode,
        e?.loginCodeAr,
        e?.resend,
        e?.resendAr,
        e?.login,
        e?.loginAr,
        e?.enterYourPhone,
        e?.enterYourPhoneAr,
        e?.register,
        e?.registerAr,
        e?.approved,
        e?.approvedAr,
        e?.manageOffers,
        e?.manageOffersAr,
        e?.manageProducts,
        e?.manageProductsAr,
        e?.addNewProduct,
        e?.addNewProductAr,
        e?.notifications,
        e?.notificationsAr,
        e?.paymentProfile,
        e?.paymentProfileAr,
        e?.paymentInfo,
        e?.paymentInfoAr,
        e?.branchName,
        e?.branchNameAr,
        e?.amount,
        e?.amountAr,
        e?.appPercentage,
        e?.appPercentageAr,
        e?.supplierPercentage,
        e?.supplierPercentageAr,
        e?.total,
        e?.totalAr,
        e?.ratingsReviews,
        e?.ratingsReviewsAr,
        e?.ratings,
        e?.ratingsAr,
        e?.registerCafeRestaurant,
        e?.registerCafeRestaurantAr,
        e?.type,
        e?.typeAr,
        e?.restaurant,
        e?.restaurantAr,
        e?.cafe,
        e?.cafeAr,
        e?.placeName,
        e?.placeNameAr,
        e?.displayPicture,
        e?.displayPictureAr,
        e?.tradeLicense,
        e?.tradeLicenseAr,
        e?.addBranche,
        e?.addBrancheAr,
        e?.addLocation,
        e?.addLocationAr,
        e?.add,
        e?.addAr,
        e?.brancheAddress,
        e?.brancheAddressAr,
        e?.selectProducts,
        e?.selectProductsAr,
        e?.addProduct,
        e?.addProductAr,
        e?.editProfile,
        e?.editProfileAr,
        e?.editDisplayImage,
        e?.editDisplayImageAr,
        e?.fullName,
        e?.fullNameAr,
        e?.attachYourTradeLicense,
        e?.attachYourTradeLicenseAr,
        e?.updateAr,
        e?.updateEn,
        e?.featuredProducts,
        e?.featuredProductsAr,
        e?.manageOrders,
        e?.manageOrdersAr,
        e?.orderTime,
        e?.orderTimeAr,
        e?.totalProducts,
        e?.totalProductsAr,
        e?.myOrders,
        e?.myOrdersAr,
        e?.orderDetails,
        e?.orderDetailsAr,
        e?.time,
        e?.timeAr,
        e?.status,
        e?.statusAr,
        e?.paymentMethod,
        e?.paymentMethodAr,
        e?.branche,
        e?.brancheAr,
        e?.userInformation,
        e?.userInformationAr,
        e?.orderItems,
        e?.orderItemsAr,
        e?.quantity,
        e?.quantityAr,
        e?.subTotal,
        e?.subTotalAr,
        e?.orderSummary,
        e?.orderSummaryAr,
        e?.markascompleted,
        e?.mARKASCOMPLETEDAr,
        e?.markasready,
        e?.mARKASREADYAr,
        e?.acceptedOrder,
        e?.acceptedOrderAr,
        e?.cancelOrder,
        e?.cancelOrderAr,
        e?.myInformation,
        e?.myInformationAr,
        e?.manageAccount,
        e?.manageAccountAr,
        e?.profile,
        e?.profileAr,
        e?.aboutAboutUs,
        e?.aboutAboutUsAr,
        e?.home,
        e?.homeAr,
        e?.articles,
        e?.articlesAr,
        e?.imageGallery,
        e?.imageGalleryAr,
        e?.faq,
        e?.fAQAr,
        e?.missionVision,
        e?.missionVisionAr,
        e?.contactUs,
        e?.contactUsAr,
        e?.privacyPolicy,
        e?.privacyPolicyAr,
        e?.termsConditions,
        e?.termsConditionsAr,
        e?.settings,
        e?.settingsAr,
        e?.logout,
        e?.logoutAr,
        e?.followUs,
        e?.followUsAr,
        e?.articlesDetails,
        e?.articlesDetailsAr,
        e?.articlesPublishedby,
        e?.articlesPublishedbyAr,
        e?.selectLanguage,
        e?.selectLanguageAr,
        e?.english,
        e?.englishAr,
        e?.arabic,
        e?.arabicAr,
        e?.continueApp,
        e?.continueAppAr,
        e?.yes,
        e?.yesAr,
        e?.no,
        e?.noAr,
        e?.hintaccepttheorder,
        e?.hintaccepttheorderAr,
        e?.sureCancelOrder,
        e?.sureCancelOrderAr,
        e?.completedOrder,
        e?.completedOrderAr,
        e?.sureCompleteOrder,
        e?.sureCompleteOrderAr,
        e?.completDataError,
        e?.completDataErrorAr,
        e?.okApp,
        e?.okAppAr,
        e?.featureProduct,
        e?.featureProductAr,
        e?.offerProduct,
        e?.offerProductAr,
        e?.manageProduct,
        e?.manageProductAr,
        e?.readyOrder,
        e?.readyOrderAr,
        e?.address,
        e?.addressAr,
        e?.addressArabic,
        e?.addressArabicAr,
        e?.pymentCreditCard,
        e?.pymentCreditCardAr,
        e?.aboutData,
        e?.aboutDataAr,
        e?.submit,
        e?.submitAr,
        e?.subject,
        e?.subjectAr,
        e?.name,
        e?.nameAr,
        e?.email,
        e?.emailAr,
        e?.comments,
        e?.commentsAr,
        e?.fullNameArabic,
        e?.fullNameArabicAr,
        e?.historyPayment,
        e?.historyPaymentAr,
        e?.appNameSupplier,
        e?.appNameSupplierAr,
        e?.readyButNotRecived,
        e?.readyButNotRecivedAr,
        e?.deleteAccount,
        e?.deleteAccountAr,
        e?.deleteMas,
        e?.deleteMasAr,
        e?.deleteMessage,
        e?.deleteMessageAr,
        e?.next,
        e?.nextAr
      ]);

  @override
  bool isValidKey(Object? o) => o is TranslatorRecord;
}
