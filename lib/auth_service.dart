import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> signUpVolunteer({
  required String email,
  required String password,
  required String fullName,
  required String volunteerType, // Expecting either 'PETROLEUM' or 'EXTERNAL'
}) async {
  try {
    // 1. Create the user authentication account in Supabase
    final AuthResponse res = await Supabase.instance.client.auth.signUp(
      email: email,
      password: password,
    );

    final String? userId = res.user?.id;

    if (userId != null) {
      // 2. Enforce business logic rule: Auto-approve Petroleum, lock External to Pending
      String initialStatus = (volunteerType == 'PETROLEUM') ? 'approved' : 'pending';

      // 3. Write this information directly to your Supabase 'profiles' table
      await Supabase.instance.client.from('profiles').insert({
        'id': userId, // Links the profile straight to their auth user account
        'full_name': fullName,
        'volunteer_type': volunteerType,
        'status': initialStatus,
      });

      print("Registration successful! Status is set to: $initialStatus");
    }
  } catch (error) {
    print("Error during volunteer registration: $error");
  }
}