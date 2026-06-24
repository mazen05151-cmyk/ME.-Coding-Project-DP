import 'package:supabase_flutter/supabase_flutter.dart';

/// Custom function to save a new volunteer request into Mazen's Supabase database schema
Future<bool> createServiceRequest({
  required String selectedCategory,
  required int durationHours,
  required String description,
}) async {
  try {
    final supabase = Supabase.instance.client;
    final user = supabase.auth.currentUser;

    // Check if the user is actually signed in first
    if (user == null) {
      print('Error: No authenticated user found.');
      return false;
    }

    // Insert a new row matching your exact schema structure
    await supabase.from('service_requests').insert({
      'requester_id': user.id,
      'selected_category': selectedCategory,
      'duration_hours': durationHours,
      'description': description,
      'status': 'pending', // Defaults to pending so Eyad's admin panel can review it
    });

    return true;
  } catch (e) {
    print('Error creating request inside VS Code: $e');
    return false;
  }
}