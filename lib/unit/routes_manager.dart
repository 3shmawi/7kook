import 'package:flutter/material.dart';
import 'package:hokok/screen/auth/create_client_account_screen.dart';
import 'package:hokok/screen/auth/create_lawyer_account_screen.dart';
import 'package:hokok/screen/auth/login_screen.dart';
import 'package:hokok/screen/intro/on_boarding_screen.dart';
import 'package:hokok/screen/intro/splash_screen.dart';
import 'package:hokok/screen/layout/layout_screen.dart';
import 'package:hokok/screen/profile/profile_screen.dart';
import 'package:hokok/screen/talk_with_us/talk_with_us_screen.dart';
import 'package:hokok/unit/strings_manager.dart';

import '../screen/auth/chose_account_screen.dart';
import '../screen/chat/chat_helper_screen.dart';
import '../screen/welcome/welcome_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onboardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String otpRoute = "/otp";
  static const String registerRoute = "/register";
  static const String clientRoute = "/client";
  static const String lawyerRoute = "/lawyer";
  static const String welcomeRoute = "/welcome";
  static const String layoutRoute = "/layout";
  static const String talkWithUsRoute = '/talkWithUs';
  static const String chatRoute = '/chat';
  static const String profileRoute = '/profile';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.otpRoute:
        return MaterialPageRoute(builder: (_) => OTPScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const ChoseAccountScreen());
      case Routes.clientRoute:
        return MaterialPageRoute(builder: (_) => CreateClientAccountScreen());
      case Routes.lawyerRoute:
        return MaterialPageRoute(builder: (_) => CreateLawyerAccountScreen());
      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.layoutRoute:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case Routes.talkWithUsRoute:
        return MaterialPageRoute(builder: (_) => const TalkWithUsScreen());
      case Routes.chatRoute:
        return MaterialPageRoute(builder: (_) => const ChatHelperScreen());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
