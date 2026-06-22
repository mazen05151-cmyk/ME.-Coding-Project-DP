import '../database.dart';

class ServiceRequestsTable extends SupabaseTable<ServiceRequestsRow> {
  @override
  String get tableName => 'service_requests';

  @override
  ServiceRequestsRow createRow(Map<String, dynamic> data) =>
      ServiceRequestsRow(data);
}

class ServiceRequestsRow extends SupabaseDataRow {
  ServiceRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceRequestsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get requesterId => getField<String>('requester_id');
  set requesterId(String? value) => setField<String>('requester_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get volunteerId => getField<String>('volunteer_id');
  set volunteerId(String? value) => setField<String>('volunteer_id', value);

  String? get selectedCategory => getField<String>('selected_category');
  set selectedCategory(String? value) =>
      setField<String>('selected_category', value);

  int? get durationHours => getField<int>('duration_hours');
  set durationHours(int? value) => setField<int>('duration_hours', value);
}
