import '../database.dart';

class VolunteerDataTable extends SupabaseTable<VolunteerDataRow> {
  @override
  String get tableName => 'volunteer_data';

  @override
  VolunteerDataRow createRow(Map<String, dynamic> data) =>
      VolunteerDataRow(data);
}

class VolunteerDataRow extends SupabaseDataRow {
  VolunteerDataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VolunteerDataTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get volunteerType => getField<String>('volunteer_type');
  set volunteerType(String? value) => setField<String>('volunteer_type', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  int? get totalPoints => getField<int>('total_points');
  set totalPoints(int? value) => setField<int>('total_points', value);

  String? get currentLevel => getField<String>('current_level');
  set currentLevel(String? value) => setField<String>('current_level', value);

  List<String> get skills => getListField<String>('skills');
  set skills(List<String>? value) => setListField<String>('skills', value);
}
