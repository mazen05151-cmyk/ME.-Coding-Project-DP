// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong2.dart' as ll;

class OpenStreetMapRadar extends StatefulWidget {
  const OpenStreetMapRadar({
    super.key,
    this.width,
    this.height,
    required this.userLat,
    required this.userLng,
    required this.volunteerList,
    this.mapRadiusKm = 10.0,
  });

  final double? width;
  final double? height;
  final double userLat;
  final double userLng;
  final List<dynamic> volunteerList;
  final double mapRadiusKm;

  @override
  State<OpenStreetMapRadar> createState() => _OpenStreetMapRadarState();
}

class _OpenStreetMapRadarState extends State<OpenStreetMapRadar> {
  List<Marker> _markers = [];
  List<CircleMarker> _circles = [];
  late BuildContext _rootContext; // Fix #5

  @override
  void initState() {
    super.initState();
    _buildMapLayers();
  }

  @override
  void didUpdateWidget(OpenStreetMapRadar oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      // Fix #4
      _buildMapLayers();
    });
  }

  void _buildMapLayers() {
    final centerPoint = ll.LatLng(widget.userLat, widget.userLng);

    _circles = [
      CircleMarker(
        point: centerPoint,
        radius: widget.mapRadiusKm * 1000,
        useRadiusInMeter: true,
        color: Colors.blue.withOpacity(0.15),
        borderColor: Colors.blue,
        borderStrokeWidth: 2,
      ),
    ];

    List<Marker> tempMarkers = [
      Marker(
        point: centerPoint,
        width: 40,
        height: 40,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 3))
            ],
          ),
          child: const Icon(Icons.person, color: Colors.white, size: 20),
        ),
      ),
    ];

    for (var volunteer in widget.volunteerList) {
      try {
        // Fix #3 — cast to num? first to handle both int and double from Supabase
        final double lat = (volunteer['latitude'] as num?)?.toDouble() ?? 0.0;
        final double lng = (volunteer['longitude'] as num?)?.toDouble() ?? 0.0;
        final String name = volunteer['full_name'] ?? 'Volunteer';

        if (lat != 0.0 && lng != 0.0) {
          tempMarkers.add(
            Marker(
              point: ll.LatLng(lat, lng),
              width: 45,
              height: 45,
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(_rootContext).showSnackBar(
                    // Fix #5
                    SnackBar(
                      content: Text('$name is available nearby!'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green, // Fix #1 — was Colors.emerald
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 4,
                          offset: Offset(0, 2))
                    ],
                  ),
                  child: const Icon(
                    Icons.volunteer_activism,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          );
        }
      } catch (e) {
        debugPrint('Error parsing volunteer: $e');
      }
    }

    _markers = tempMarkers;
  }

  @override
  Widget build(BuildContext context) {
    _rootContext = context; // Fix #5
    return FlutterMap(
      options: MapOptions(
        initialCenter: ll.LatLng(widget.userLat, widget.userLng),
        initialZoom: 12,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        CircleLayer(circles: _circles),
        MarkerLayer(markers: _markers),
      ],
    );
  }
}
