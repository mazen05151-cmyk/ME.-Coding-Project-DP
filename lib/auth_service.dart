// lib/auth_service.dart
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
 // Add this inside the AuthService class in lib/auth_service.dart

// 1. Fetch all volunteers who are currently pending
Future<List<Map<String, dynamic>>> getPendingVolunteers() async {
  try {
    final List<Map<String, dynamic>> response = await _supabase
        .from('profiles')
        .select()
        .eq('status', 'pending');
    return response;
  } catch (error) {
    throw Exception("Failed to fetch pending volunteers: $error");
  }
}

// 2. Update a specific volunteer's status to approved
Future<void> approveVolunteer(String userId) async {
  try {
    await _supabase
        .from('profiles')
        .update({'status': 'approved'})
        .eq('id', userId);
  } catch (error) {
    throw Exception("Failed to approve volunteer: $error");
  }
}
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<void> signUpVolunteer({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
    required String role, // Pass 'PETROLEUM' or 'EXTERNAL' here
  }) async {
    try {
      // 1. Create the user authentication account
      final AuthResponse res = await _supabase.auth.signUp(
        email: email,
        password: password,
      );

      final String? userId = res.user?.id;

      if (userId != null) {
        // 2. Auto-approve Petroleum, keep External as Pending
        String initialStatus = (role == 'PETROLEUM') ? 'approved' : 'pending';

        // 3. Insert matching rows into your exact Supabase table
        await _supabase.from('profiles').insert({
          'id': userId, // Links to Auth
          'full_name': fullName,
          'role': role,
          'phone_number': phoneNumber,
          'status': initialStatus, // The new column you added
          'created_at': DateTime.now().toIso8601String(),
        });
        
        print("Backend setup successfully for user!");
      }
    } catch (error) {
      throw Exception("Signup failed: $error");
    }
  }
}