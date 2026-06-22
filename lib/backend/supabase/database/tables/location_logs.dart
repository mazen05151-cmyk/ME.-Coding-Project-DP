import '../database.dart';

class LocationLogsTable extends SupabaseTable<LocationLogsRow> {
  @override
  String get tableName => 'location_logs';

  @override
  LocationLogsRow createRow(Map<String, dynamic> data) => LocationLogsRow(data);
}

class LocationLogsRow extends SupabaseDataRow {
  LocationLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LocationLogsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get assignmentId => getField<String>('assignment_id');
  set assignmentId(String? value) => setField<String>('assignment_id', value);

  double get latitude => getField<double>('latitude')!;
  set latitude(double value) => setField<double>('latitude', value);

  double get longitude => getField<double>('longitude')!;
  set longitude(double value) => setField<double>('longitude', value);

  DateTime? get loggedAt => getField<DateTime>('logged_at');
  set loggedAt(DateTime? value) => setField<DateTime>('logged_at', value);
}
