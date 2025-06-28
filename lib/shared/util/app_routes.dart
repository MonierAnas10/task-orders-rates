// import 'package:flutter/material.dart';
// import 'package:representative/Features/BankAccount/bank_screen.dart';
// import 'package:representative/Features/Commissions/commissions_screen.dart';
// import 'package:representative/Features/Home/pages/search_resualts_page.dart';
// import 'package:representative/Features/Store/adding_store_screen.dart';
// import 'package:representative/Features/Store/branch_location_screen.dart';
// import 'package:representative/Features/Store/edit_store_screen.dart';

// import '../../Features/BankAccount/add_bank_account_screen.dart';
// import '../../Features/BankAccount/no_bank_account_screen.dart';
// import '../../Features/ChangePassword/reset_password_screen.dart';
// import '../../Features/Home/pages/home_screen.dart';

// import '../../Features/Login/pages/login_screen.dart';
// import '../../Features/Notifications/notificationScreen.dart';
// import '../../Features/OTP/otp_screen.dart';
// import '../../Features/OnBoarding/pages/onboarding_screen.dart';
// import '../../Features/Profile/edit_profile_data_screen.dart';
// import '../../Features/Profile/main_profile_screen.dart';
// import '../../Features/Registeration/pages/complete_registeration_screen.dart';

// import '../../Features/Registeration/pages/phone_registeration_screen.dart';
// import '../../Features/Registeration/pages/success_registeration_screen.dart';
// import '../../Features/ResetPassword/pages/reset_password_phone_screen.dart';

// import '../../Features/ResetPassword/pages/reset_password_screen.dart';
// import '../../Features/Splash/pages/splash_screen.dart';
// import '../../Features/Store/store_details_screen.dart';

// class AppRoutes {
//   // All app routes
//   static const String splashPage = "splashPage";
//   static const String onBoardingPage = "onBoardingPage";
//   static const String login = "login";
//   static const String userResetPasswordPhoneScreen =
//       "userResetPasswordPhoneScreen";
//   static const String homeScreen = "homeScreen";

//   static const String userBottomNavBarScreen = "userBottomNavBarScreen";
//   static const String userPhoneRegisterationScreen =
//       "userPhoneRegisterationScreen";
//   static const String userAddBankAccountScreen = "userAddBankAccountScreen";
//   static const String userBankAccountScreen = "userBankAccountScreen";
//   static const String userMainProfileScreen = "userMainProfileScreen";
//   static const String userNoBankAccountScreen = "userNoBankAccountScreen";
//   static const String userEditProfileDataScreen = "userEditProfileDataScreen";
//   static const String userChangePasswordScreen = "userChangePasswordScreen";
//   static const String successRegisterationScreen = "successRegisterationScreen";
//   static const String userCompleteRegisterationScreen =
//       "userCompleteRegisterationScreen";

//   static const String userFavoritesScreen = "userFavoritesScreen";

//   static const String otpScreen = "otpScreen";
//   static const String userResetPasswordScreen = "userResetPasswordScreen ";

//   static const String userStoreDetailsScreen = " userStoreDetailsScreen";
//   static const String userNearestStoresScreen = " userNearestStoresScreen";
//   static const String notificationScreen = " NotificationScreen";
//   static const String userCategoryScreen = " userCategoryScreen";
//   static const String noTouristProgramsScreen = "noTouristProgramsScreen";
//   static const String crearteNewTouristProgram = "crearteNewTouristProgram";
//   static const String selectDepartmentAndStore = "selectDepartmentAndStore";
//   static const String programPriceAndDataScreen = "programPriceAndDataScreen";
//   static const String programConfirmationScreen = "programConfirmationScreen";
//   static const String touristProgramsCitiesScreen =
//       "touristProgramsCitiesScreen";
//   static const String cityAllProgramsScreen = "cityAllProgramsScreen";
//   static const String confirmReservationScreen = "ConfirmReservationScreen";
//   static const String waittingOrdersDetailsScreen =
//       "waittingOrdersDetailsScreen";
//   static const String activeOrdersDetailsScreen = "activeOrdersDetailsScreen";
//   static const String completedOrdersDetailsScreen =
//       "completedOrdersDetailsScreen";
//   static const String waittingReservationDetailsScreen =
//       "waittingReservationDetailsScreen";
//   static const String activeReservationDetailsScreen =
//       "waittingReservationDetailsScreen";
//   static const String completedReservationDetailsScreen =
//       "waittingReservationDetailsScreen";
//   static const String productDetailsScreen = "productDetailsScreen";
//   static const String shoppingScreen = "shoppingScreen";
//   static const String confirmTouristProgramCreation =
//       "confirmTouristProgramCreation";
//   static const String editStoreInfo = "editStoreInfo";
//   static const String addingNewStore = "addingBewStore";
//   static const String commissionScreen = "commissionScreen";
//   static const String changePasswordPhoneScreen = "changePasswordPhoneScreen";
//   static const String branchLocationScreen = "branchLocationScreen";
//   static const String searchResultScreen = "searchResultScreen";

//   static Route<dynamic> appRoutes(RouteSettings settings) {
//     dynamic args = settings.arguments;

//     switch (settings.name) {
//       case splashPage:
//         return appPage(SplashScreen());

//       case onBoardingPage:
//         return appPage(OnBoarding());

//       case login:
//         return appPage(LoginScreen());

//       // case userResetPasswordPhoneScreen:
//       //   return appPage(UserResetPasswordScreen());
//       case userPhoneRegisterationScreen:
//         return appPage(UserPhoneRegisterationScreen());

//       case userAddBankAccountScreen:
//         return appPage(UserAddBankAccountScreen());
//       case userNoBankAccountScreen:
//         return appPage(UserNoBankAccountScreen());

//       case userMainProfileScreen:
//         return appPage(UserMainProfileScreen());
//       case userEditProfileDataScreen:
//         return appPage(UserEditProfileDataScreen());
//       case userChangePasswordScreen:
//         return appPage(UserChangePasswordScreen());

//       case successRegisterationScreen:
//         return appPage(SuccessRegisterationScreen());
//       case userCompleteRegisterationScreen:
//         return appPage(UserCompleteRegisterationScreen(
//             token_to_complete_Registeration: args![0]));
//       case otpScreen:
//         return appPage(OTPScreen(
//           phoneNumber: args![0],
//           from: args[1],
//           resetPasswordViewModel: args[2],
//         ));
//       case userResetPasswordScreen:
//         return appPage(UserResetPasswordScreen(
//           phoneNumber: args as String,
//         ));
//       case userStoreDetailsScreen:
//         return appPage(UserStoreDetailsScreen(
//           storeModel: args,
//         ));
//       case notificationScreen:
//         return appPage(NotificationScreen(
//           notificationViewModel: args[0],
//         ));

//       case userBankAccountScreen:
//         return appPage(BankScreen());
//       case homeScreen:
//         return appPage(AgentHomeScreen());

//       case searchResultScreen:
//         return appPage(SearchResualtScreen(homeViewModel: args));

//       case editStoreInfo:
//         return appPage(EditStoreScreen());
//       case addingNewStore:
//         return appPage(AddingStoreScreen(
//           storeViewModel: args[0],
//         ));
//       case commissionScreen:
//         return appPage(CommissionsScreen());
//       case changePasswordPhoneScreen:
//         return appPage(ResetPasswordPhoneScreen());
//       case branchLocationScreen:
//         return appPage(BranchLocationScreen(
//           storeViewModel: args[0],
//         ));

//       default:
//         return appPage(SplashScreen());
//     }
//   }

//   static appPage(Widget page) {
//     return MaterialPageRoute(builder: (_) => page);
//   }
// }
