import '../database.dart';

class PartnerCompaniesTable extends SupabaseTable<PartnerCompaniesRow> {
  @override
  String get tableName => 'partner_companies';

  @override
  PartnerCompaniesRow createRow(Map<String, dynamic> data) =>
      PartnerCompaniesRow(data);
}

class PartnerCompaniesRow extends SupabaseDataRow {
  PartnerCompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PartnerCompaniesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get companyName => getField<String>('company_name')!;
  set companyName(String value) => setField<String>('company_name', value);

  String get emailDomain => getField<String>('email_domain')!;
  set emailDomain(String value) => setField<String>('email_domain', value);
}
