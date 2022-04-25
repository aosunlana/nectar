import 'package:flutter/material.dart';
import 'presentation/screens/beverages_view.dart';
import 'presentation/screens/cart_view.dart';
import 'presentation/screens/checkout_view.dart';
import 'presentation/screens/enter_number_view.dart';
import 'presentation/screens/explore_view.dart';
import 'presentation/screens/filters_view.dart';
import 'presentation/screens/home_view.dart';
import 'presentation/screens/login_view.dart';
import 'presentation/screens/get_started_view.dart';
import 'presentation/screens/onboarding_view.dart';
import 'presentation/screens/order_failed_view.dart';
import 'presentation/screens/order_success_view.dart';
import 'presentation/screens/pin_verification_view.dart';
import 'presentation/screens/product_detail_view.dart';
import 'presentation/screens/search_view.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/screens/account_view.dart';

class RouteGenerator {
  static const String splashView = '/';
  static const String homePage = '/home';
  static const String accountView = '/account';
  static const String orderFailedView = '/orderFailed';
  static const String getStartedView = '/getStarted';
  static const String filtersView = '/filters';
  static const String pinVerificationView = '/pinVerification';
  static const String productDetailView = '/productDetail';
  static const String orderSuccessView = '/orderSuccess';
  static const String enterNumberView = '/enterNumber';
  static const String onboardingView = '/onboarding';
  static const String beveragesView = '/beverages';
  static const String checkoutView = '/checkout';
  static const String exploreView = '/explore';
  static const String searchView = '/search';
  static const String loginView = '/login';
  static const String cartView = '/cart';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case accountView:
        return MaterialPageRoute(
          builder: (_) => const AccountView(),
        );
      case orderFailedView:
        return MaterialPageRoute(
          builder: (_) => const OrderFailedView(),
        );
      case filtersView:
        return MaterialPageRoute(
          builder: (_) => const FiltersView(),
        );
      case loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case getStartedView:
        return MaterialPageRoute(
          builder: (_) => const GetStartedView(),
        );
      case pinVerificationView:
        return MaterialPageRoute(
          builder: (_) => const PinVerificationView(),
        );
      case productDetailView:
        return MaterialPageRoute(
          builder: (_) => const ProductDetailView(),
        );
      case orderSuccessView:
        return MaterialPageRoute(
          builder: (_) => const OrderSuccessView(),
        );
      case enterNumberView:
        return MaterialPageRoute(
          builder: (_) => const EnterNumberView(),
        );
      case onboardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case beveragesView:
        return MaterialPageRoute(
          builder: (_) => const BeveragesView(),
        );
      case checkoutView:
        return MaterialPageRoute(
          builder: (_) => const CheckoutView(),
        );
      case exploreView:
        return MaterialPageRoute(
          builder: (_) => const ExploreView(),
        );
      case searchView:
        return MaterialPageRoute(
          builder: (_) => const SearchView(),
        );
      case cartView:
        return MaterialPageRoute(
          builder: (_) => const MyCartView(),
        );
      default:
        throw const FormatException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
