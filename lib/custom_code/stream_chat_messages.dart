import 'package:supabase_flutter/supabase_flutter.dart';

/// Stream listener to receive chat messages in real time for a specific assignment
Stream<List<Map<String, dynamic>>> streamChatMessages(String assignmentId) {
  final supabase = Supabase.instance.client;

  // Streams real-time updates filtered by the current chat assignment ID
  return supabase
      .from('messages')
      .stream(primaryKey: ['id'])
      .eq('assignment_id', assignmentId)
      .order('created_at', ascending: true);
}