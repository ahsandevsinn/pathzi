import 'package:go_router/go_router.dart';
import 'package:pathzi/features/auth/login_screen.dart';
import 'package:pathzi/features/auth/signup_screen.dart';
import 'package:pathzi/features/connections/connections_screen.dart';
import 'package:pathzi/features/home/home_screen.dart';
import 'package:pathzi/features/home/widgets/bottom_navbar.dart';
import 'package:pathzi/features/job/job_description_screen.dart';
import 'package:pathzi/features/language_screen/language_screen.dart';
import 'package:pathzi/features/mycareers/mycareer_screen.dart';
import 'package:pathzi/features/onboarding/onboarding_screen.dart';
import 'package:pathzi/features/preferences/preferences_screen.dart';
import 'package:pathzi/features/profile/edit_profile_screen.dart';
import 'package:pathzi/features/provider_profile/provider_profile_screen.dart';
import 'package:pathzi/features/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: AppRouteNames.splash,
      builder: (context, state) {
        return SplashScreen();
      },
    ),
    GoRoute(
      path: "/onboarding_screen",
      name: AppRouteNames.onboarding,
      builder: (context, state) {
        return OnboardingScreen();
      },
    ),
    GoRoute(
      path: "/signup_screen",
      name: AppRouteNames.signUp,
      builder: (context, state) {
        return SignupScreen();
      },
    ),
    GoRoute(
      path: "/login_screen",
      name: AppRouteNames.login,
      builder: (context, state) {
        return LoginScreen();
      },
    ),
    GoRoute(
      path: "/preferences",
      name: AppRouteNames.preferences,
      builder: (context, state) {
        return PreferencesScreen();
      },
    ),
    GoRoute(
      path: "/home_screen",
      name: AppRouteNames.home,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: "/bottom_navbar",
      name: AppRouteNames.bottom_navbar,
      builder: (context, state) {
        return BottomNavbar();
      },
    ),
    GoRoute(
      path: "/job_description_screen",
      name: AppRouteNames.jobDescriptionScreen,
      builder: (context, state) {
        return JobDescriptionScreen();
      },
    ),
    GoRoute(
      path: "/mycareer_screen",
      name: AppRouteNames.mycareer_screen,
      builder: (context, state) {
        return MycareerScreen();
      },
    ),
    GoRoute(
      path: "/provider_profile_screen",
      name: AppRouteNames.provider_profile_screen,
      builder: (context, state) {
        return ProviderProfileScreen();
      },
    ),
    GoRoute(
      path: "/edit_profile",
      name: AppRouteNames.edit_profile,
      builder: (context, state) {
        return EditProfileScreen();
      },
    ),
    GoRoute(
      path: "/language_screen",
      name: AppRouteNames.language_screen,
      builder: (context, state) {
        return LanguageScreen();
      },
    ),
  ],
);

class AppRouteNames {
  static const String splash = "Splash";
  static const String onboarding = "onboarding_screen";
  static const String signUp = "signup_screen";
  static const String login = "login_screen";
  static const String preferences = "preferences";
  static const String home = "home_screen";
  static const String bottom_navbar = "bottom_navbar";
  static const String jobDescriptionScreen = "job_description_screen";
  static const String mycareer_screen = "mycareer_screen";
  static const String connection_screen = "connection_screen";
  static const String provider_profile_screen = "provider_profile_screen";
  static const String edit_profile = "edit_profile";
  static const String language_screen = "language_screen";
}
