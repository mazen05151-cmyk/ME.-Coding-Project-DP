import '../database.dart';

class RedemptionsTable extends SupabaseTable<RedemptionsRow> {
  @override
  String get tableName => 'redemptions';

  @override
  RedemptionsRow createRow(Map<String, dynamic> data) => RedemptionsRow(data);
}

class RedemptionsRow extends SupabaseDataRow {
  RedemptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RedemptionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get volunteerId => getField<String>('volunteer_id');
  set volunteerId(String? value) => setField<String>('volunteer_id', value);

  String? get rewardId => getField<String>('reward_id');
  set rewardId(String? value) => setField<String>('reward_id', value);

  DateTime? get redeemedAt => getField<DateTime>('redeemed_at');
  set redeemedAt(DateTime? value) => setField<DateTime>('redeemed_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
