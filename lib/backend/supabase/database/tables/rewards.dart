import '../database.dart';

class RewardsTable extends SupabaseTable<RewardsRow> {
  @override
  String get tableName => 'rewards';

  @override
  RewardsRow createRow(Map<String, dynamic> data) => RewardsRow(data);
}

class RewardsRow extends SupabaseDataRow {
  RewardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get partnerName => getField<String>('partner_name');
  set partnerName(String? value) => setField<String>('partner_name', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int get pointsCost => getField<int>('points_cost')!;
  set pointsCost(int value) => setField<int>('points_cost', value);

  int? get stockQuantity => getField<int>('stock_quantity');
  set stockQuantity(int? value) => setField<int>('stock_quantity', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
