import 'package:flutter/widgets.dart' show ChangeNotifier;
import 'package:maps_application/app/ui/routes/routes.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashController extends ChangeNotifier {
  final Permission _localPermission;
  String? _routeName;
  String? get routeName => _routeName;

  SplashController(this._localPermission);

  Future<void> checkPermission() async {
    final isGranted = await _localPermission.isGranted;
    _routeName = isGranted ? Routes.HOME : Routes.PERMISSIONS;
    notifyListeners();
  }
}
