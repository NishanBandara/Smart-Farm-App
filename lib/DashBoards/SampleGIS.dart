import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SampleGIS extends StatefulWidget {
  @override
  _SampleGISState createState() => _SampleGISState();
}

class _SampleGISState extends State<SampleGIS> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(7.4833314, 80.3666652);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white), onPressed: () {}),
          backgroundColor: Color.fromRGBO(0, 172, 142, 5.0),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notification_important,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {}),
          ],
          elevation: 7.0,
        ),
        body: GoogleMap(
          mapType: MapType.hybrid,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 7.0,
          ),
        ),
      ),
    );
  }
}
