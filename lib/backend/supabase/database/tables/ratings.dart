import '../database.dart';

class RatingsTable extends SupabaseTable<RatingsRow> {
  @override
  String get tableName => 'ratings';

  @override
  RatingsRow createRow(Map<String, dynamic> data) => RatingsRow(data);
}

class RatingsRow extends SupabaseDataRow {
  RatingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RatingsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get assignmentId => getField<String>('assignment_id');
  set assignmentId(String? value) => setField<String>('assignment_id', value);

  String? get reviewerId => getField<String>('reviewer_id');
  set reviewerId(String? value) => setField<String>('reviewer_id', value);

  int get rating => getField<int>('rating')!;
  set rating(int value) => setField<int>('rating', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
