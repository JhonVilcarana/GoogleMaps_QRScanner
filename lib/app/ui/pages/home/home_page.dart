import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _initialCameraPosition = CameraPosition(
    target: LatLng(-18.0161552, -70.2535019),
    zoom: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        onMapCreated: (controller) {},
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: false,
      ),
    );
  }
}
