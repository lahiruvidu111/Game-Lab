import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'coach_registration_record.g.dart';

abstract class CoachRegistrationRecord
    implements Built<CoachRegistrationRecord, CoachRegistrationRecordBuilder> {
  static Serializer<CoachRegistrationRecord> get serializer =>
      _$coachRegistrationRecordSerializer;

  @BuiltValueField(wireName: 'coach_name')
  String? get coachName;

  @BuiltValueField(wireName: 'contact_details')
  String? get contactDetails;

  String? get description;

  @BuiltValueField(wireName: 'game_name')
  String? get gameName;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CoachRegistrationRecordBuilder builder) =>
      builder
        ..coachName = ''
        ..contactDetails = ''
        ..description = ''
        ..gameName = ''
        ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coachRegistration');

  static Stream<CoachRegistrationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CoachRegistrationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CoachRegistrationRecord._();
  factory CoachRegistrationRecord(
          [void Function(CoachRegistrationRecordBuilder) updates]) =
      _$CoachRegistrationRecord;

  static CoachRegistrationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCoachRegistrationRecordData({
  String? coachName,
  String? contactDetails,
  String? description,
  String? gameName,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    CoachRegistrationRecord.serializer,
    CoachRegistrationRecord(
      (c) => c
        ..coachName = coachName
        ..contactDetails = contactDetails
        ..description = description
        ..gameName = gameName
        ..title = title,
    ),
  );

  return firestoreData;
}
