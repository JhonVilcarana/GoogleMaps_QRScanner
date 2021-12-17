import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maps_application/app/ui/pages/home/prequest_permissions/request_permission_controller.dart';
import 'package:maps_application/app/ui/routes/routes.dart';
import 'package:permission_handler/permission_handler.dart';

class RequestPermissionPage extends StatefulWidget {
  RequestPermissionPage({Key? key}) : super(key: key);

  @override
  _RequestPermissionPageState createState() => _RequestPermissionPageState();
}

class _RequestPermissionPageState extends State<RequestPermissionPage> {
  final _controller =
      RequestPermissioneController(Permission.locationWhenInUse);
  late StreamSubscription _subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.onStatusChanged.listen(
      (status) {
        if (status == PermissionStatus.granted) {
          Navigator.pushReplacementNamed(context, Routes.HOME);
        }
      },
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: ElevatedButton(
            child: const Text("Allow"),
            onPressed: () {
              _controller.request();
            },
          ),
        ),
      ),
    );
  }
}
