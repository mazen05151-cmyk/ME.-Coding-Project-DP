import '../database.dart';

class ServiceCategoriesTable extends SupabaseTable<ServiceCategoriesRow> {
  @override
  String get tableName => 'service_categories';

  @override
  ServiceCategoriesRow createRow(Map<String, dynamic> data) =>
      ServiceCategoriesRow(data);
}

class ServiceCategoriesRow extends SupabaseDataRow {
  ServiceCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceCategoriesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get nameEn => getField<String>('name_en')!;
  set nameEn(String value) => setField<String>('name_en', value);

  String get nameAr => getField<String>('name_ar')!;
  set nameAr(String value) => setField<String>('name_ar', value);

  double? get baseComplexityMultiplier =>
      getField<double>('base_complexity_multiplier');
  set baseComplexityMultiplier(double? value) =>
      setField<double>('base_complexity_multiplier', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
