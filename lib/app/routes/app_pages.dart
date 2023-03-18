import 'package:get/get.dart';

import 'package:halaqoh/app/modules/check_email/bindings/check_email_binding.dart';
import 'package:halaqoh/app/modules/check_email/views/check_email_view.dart';
import 'package:halaqoh/app/modules/create-halaqoh/bindings/create_halaqoh_binding.dart';
import 'package:halaqoh/app/modules/create-halaqoh/views/create_halaqoh_view.dart';
import 'package:halaqoh/app/modules/forgot/bindings/forgot_binding.dart';
import 'package:halaqoh/app/modules/forgot/views/forgot_view.dart';
import 'package:halaqoh/app/modules/home/bindings/home_binding.dart';
import 'package:halaqoh/app/modules/home/views/home_view.dart';
import 'package:halaqoh/app/modules/login/bindings/login_binding.dart';
import 'package:halaqoh/app/modules/login/views/login_view.dart';
import 'package:halaqoh/app/modules/phone/bindings/phone_binding.dart';
import 'package:halaqoh/app/modules/phone/views/phone_view.dart';
import 'package:halaqoh/app/modules/register/bindings/register_binding.dart';
import 'package:halaqoh/app/modules/register/views/register_view.dart';
import 'package:halaqoh/app/modules/splash/bindings/splash_binding.dart';
import 'package:halaqoh/app/modules/splash/views/splash_view.dart';
import 'package:halaqoh/app/modules/update-halaqoh/bindings/update_halaqoh_binding.dart';
import 'package:halaqoh/app/modules/update-halaqoh/views/update_halaqoh_view.dart';
import 'package:halaqoh/app/modules/veify-otp/bindings/veify_otp_binding.dart';
import 'package:halaqoh/app/modules/veify-otp/views/veify_otp_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT,
      page: () => ForgotView(),
      binding: ForgotBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.VEIFY_OTP,
      page: () => VeifyOTPView(),
      binding: VeifyOtpBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_HALAQOH,
      page: () => UpdateHalaqohView(),
      binding: UpdateHalaqohBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_HALAQOH,
      page: () => CreateHalaqohView(),
      binding: CreateHalaqohBinding(),
    ),
    GetPage(
      name: _Paths.PHONE,
      page: () => PhoneView(),
      binding: PhoneBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_EMAIL,
      page: () => CheckEmailView(),
      binding: CheckEmailBinding(),
    ),
  ];
}
