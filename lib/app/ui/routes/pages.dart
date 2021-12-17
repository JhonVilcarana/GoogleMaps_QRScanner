import 'package:flutter/widgets.dart';
import 'package:maps_application/app/ui/pages/home/home_page.dart';
import 'package:maps_application/app/ui/pages/home/prequest_permissions/request_permission_page.dart';
import 'package:maps_application/app/ui/pages/splash/splash_page.dart';
import 'package:maps_application/app/ui/routes/routes.dart';

Map<String, Widget Function(BuildContext)> appRoutes() {
  return {
    Routes.SPLASH: (_) => const SplashPage(),
    Routes.PERMISSIONS: (_) => RequestPermissionPage(),
    Routes.HOME: (_) => HomePage(),
  };
}
