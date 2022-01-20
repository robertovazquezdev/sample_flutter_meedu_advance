import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/home/home_page.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/login/login_page.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/profile/profile_page.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/splash/splash_page.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/user_detail/user_detail_page.dart';
import 'routes.dart';
import 'package:flutter/widgets.dart' show BuildContext, Widget;

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.HOME: (_) => const HomePage(),
    Routes.SPLASH: (_) => const SplashPage(),
    Routes.LOGIN: (_) => const LoginPage(),
    Routes.PROFILE: (_) => const ProfilePage(),
    Routes.USER_DETAIL: (_) => const UserDetailPage()
  };
}
