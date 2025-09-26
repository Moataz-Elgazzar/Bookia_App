import 'package:bookia/features/auth/presentation/forget_password/pages/creat_password.dart';
import 'package:bookia/features/auth/presentation/forget_password/pages/forget_password_screen.dart';
import 'package:bookia/features/auth/presentation/forget_password/pages/otp_screen.dart';
import 'package:bookia/features/auth/presentation/forget_password/pages/password_changed_screen.dart';
import 'package:bookia/features/auth/presentation/login/pages/login_screen.dart';
import 'package:bookia/features/auth/presentation/register/pages/register_screen.dart';
import 'package:bookia/features/details/pages/details_screen.dart';
import 'package:bookia/features/home/models/product_best.dart';
import 'package:bookia/features/home/pages/home_screen.dart';
import 'package:bookia/features/main/pages/main_screen.dart';
import 'package:bookia/features/splash/splash_screen.dart';
import 'package:bookia/features/welcome_screen/welcome_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPassword = '/forgetPassword';
  static const String otp = '/otp';
  static const String creatPassword = '/creatPassword';
  static const String passwordChanged = '/passwordChanged';
  static const String home = '/home';
  static const String details = '/details';
  static const String mainscreen = '/mainscreen';

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
      GoRoute(path: welcome, builder: (context, state) => const WelcomeScreen()),
      GoRoute(path: login, builder: (context, state) => const LoginScreen()),
      GoRoute(path: register, builder: (context, state) => const RegisterScreen()),
      GoRoute(path: forgetPassword, builder: (context, state) => const ForgetPasswordScreen()),
      GoRoute(path: otp, builder: (context, state) => const OtpScreen()),
      GoRoute(path: creatPassword, builder: (context, state) => const CreatPassword()),
      GoRoute(path: passwordChanged, builder: (context, state) => const PasswordChangedScreen()),
      GoRoute(path: home, builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: details,
        builder: (context, state) {
          final product = state.extra as ProductBest;
          return DetailsScreen(models: product);
        },
      ),
      GoRoute(path: mainscreen, builder: (context, state) => const MainScreen()),
    ],
  );
}
