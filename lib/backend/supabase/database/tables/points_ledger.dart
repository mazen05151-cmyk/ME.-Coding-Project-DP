import '../database.dart';

class PointsLedgerTable extends SupabaseTable<PointsLedgerRow> {
  @override
  String get tableName => 'points_ledger';

  @override
  PointsLedgerRow createRow(Map<String, dynamic> data) => PointsLedgerRow(data);
}

class PointsLedgerRow extends SupabaseDataRow {
  PointsLedgerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PointsLedgerTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get volunteerId => getField<String>('volunteer_id');
  set volunteerId(String? value) => setField<String>('volunteer_id', value);

  String? get assignmentId => getField<String>('assignment_id');
  set assignmentId(String? value) => setField<String>('assignment_id', value);

  int get amount => getField<int>('amount')!;
  set amount(int value) => setField<int>('amount', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
