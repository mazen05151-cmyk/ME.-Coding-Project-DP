import 'package:supabase_flutter/supabase_flutter.dart';

/// Calls the get_nearby_volunteers RPC function in Supabase to find users within a radius
Future<List<Map<String, dynamic>>> fetchNearbyVolunteers({
  required double userLatitude,
  required double userLongitude,
  double maxRadiusMeters = 5000, // Defaults to 5 KM
}) async {
  try {
    final supabase = Supabase.instance.client;

    // Invoke the Postgres function using Supabase RPC
    final List<dynamic> response = await supabase.rpc(
      'get_nearby_volunteers',
      params: {
        'target_lat': userLatitude,
        'target_lng': userLongitude,
        'max_radius_meters': maxRadiusMeters,
      },
    );

    // Map and return the clean list of raw rows
    return List<Map<String, dynamic>>.from(response);
  } catch (e) {
    print('Error finding nearby volunteers: $e');
    return [];
  }
}