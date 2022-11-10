import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'error_fixing_record.g.dart';

abstract class ErrorFixingRecord
    implements Built<ErrorFixingRecord, ErrorFixingRecordBuilder> {
  static Serializer<ErrorFixingRecord> get serializer =>
      _$errorFixingRecordSerializer;

  @BuiltValueField(wireName: 'e-mail')
  String? get eMail;

  String? get problem;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ErrorFixingRecordBuilder builder) => builder
    ..eMail = ''
    ..problem = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('errorFixing');

  static Stream<ErrorFixingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ErrorFixingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ErrorFixingRecord._();
  factory ErrorFixingRecord([void Function(ErrorFixingRecordBuilder) updates]) =
      _$ErrorFixingRecord;

  static ErrorFixingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createErrorFixingRecordData({
  String? eMail,
  String? problem,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    ErrorFixingRecord.serializer,
    ErrorFixingRecord(
      (e) => e
        ..eMail = eMail
        ..problem = problem
        ..title = title,
    ),
  );

  return firestoreData;
}
