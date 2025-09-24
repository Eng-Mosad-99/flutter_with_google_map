import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({
    super.key,
  });

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;
  @override
  void initState() {
    initialCameraPosition = const CameraPosition(
      target: LatLng(
        31.1726894983781,
        31.515860310085735,
      ),
      zoom: 12,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        cameraTargetBounds: CameraTargetBounds(
          LatLngBounds(
            northeast: const LatLng(
              31.437220202959264,
              31.547018440591337,
            ),
            southwest: const LatLng(
              30.607313478445793,
              31.2634743280193,
            ),
          ),
        ),
      ),
    );
  }
}
