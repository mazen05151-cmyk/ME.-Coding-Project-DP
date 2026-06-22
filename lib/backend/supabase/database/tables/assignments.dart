import '../database.dart';

class AssignmentsTable extends SupabaseTable<AssignmentsRow> {
  @override
  String get tableName => 'assignments';

  @override
  AssignmentsRow createRow(Map<String, dynamic> data) => AssignmentsRow(data);
}

class AssignmentsRow extends SupabaseDataRow {
  AssignmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssignmentsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get requestId => getField<String>('request_id');
  set requestId(String? value) => setField<String>('request_id', value);

  String? get volunteerId => getField<String>('volunteer_id');
  set volunteerId(String? value) => setField<String>('volunteer_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get acceptedAt => getField<DateTime>('accepted_at');
  set acceptedAt(DateTime? value) => setField<DateTime>('accepted_at', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);
}
