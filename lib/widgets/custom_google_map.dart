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

  late GoogleMapController googleMapController;
  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: (controller) {
            googleMapController = controller;
          },
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
        Positioned(
          right: 16,
          left: 16,
          bottom: 16,
          child: ElevatedButton(
            onPressed: () {
          
              googleMapController.animateCamera(
                CameraUpdate.newLatLng(const LatLng(30.764166086674447, 31.32060310583492)),
              );
            },
            child: const Text(
              'Change Location',
            ),
          ),
        ),
      ],
    );
  }
}
