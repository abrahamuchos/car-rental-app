import 'package:car_rental_app/presentation/widgets/car_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDetailsPage extends StatelessWidget {
  const MapDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: MapController(),
            options: MapOptions(
              initialZoom: 13,
              initialCenter: LatLng(10.5, -66.91),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.abraham.app',
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: CarDetailsCard(),
          ),
        ],
      ),
    );
  }
}
