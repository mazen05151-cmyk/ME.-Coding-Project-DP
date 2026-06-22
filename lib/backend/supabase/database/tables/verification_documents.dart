import '../database.dart';

class VerificationDocumentsTable
    extends SupabaseTable<VerificationDocumentsRow> {
  @override
  String get tableName => 'verification_documents';

  @override
  VerificationDocumentsRow createRow(Map<String, dynamic> data) =>
      VerificationDocumentsRow(data);
}

class VerificationDocumentsRow extends SupabaseDataRow {
  VerificationDocumentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VerificationDocumentsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get volunteerId => getField<String>('volunteer_id');
  set volunteerId(String? value) => setField<String>('volunteer_id', value);

  String get documentType => getField<String>('document_type')!;
  set documentType(String value) => setField<String>('document_type', value);

  String get documentUrl => getField<String>('document_url')!;
  set documentUrl(String value) => setField<String>('document_url', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get adminNotes => getField<String>('admin_notes');
  set adminNotes(String? value) => setField<String>('admin_notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get verifiedAt => getField<DateTime>('verified_at');
  set verifiedAt(DateTime? value) => setField<DateTime>('verified_at', value);
}
