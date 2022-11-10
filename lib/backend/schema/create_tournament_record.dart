import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'create_tournament_record.g.dart';

abstract class CreateTournamentRecord
    implements Built<CreateTournamentRecord, CreateTournamentRecordBuilder> {
  static Serializer<CreateTournamentRecord> get serializer =>
      _$createTournamentRecordSerializer;

  @BuiltValueField(wireName: 'closing_date')
  String? get closingDate;

  String? get description;

  @BuiltValueField(wireName: 'e-mail')
  String? get eMail;

  String? get game;

  String? get prize;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CreateTournamentRecordBuilder builder) =>
      builder
        ..closingDate = ''
        ..description = ''
        ..eMail = ''
        ..game = ''
        ..prize = ''
        ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('createTournament');

  static Stream<CreateTournamentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CreateTournamentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CreateTournamentRecord._();
  factory CreateTournamentRecord(
          [void Function(CreateTournamentRecordBuilder) updates]) =
      _$CreateTournamentRecord;

  static CreateTournamentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCreateTournamentRecordData({
  String? closingDate,
  String? description,
  String? eMail,
  String? game,
  String? prize,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    CreateTournamentRecord.serializer,
    CreateTournamentRecord(
      (c) => c
        ..closingDate = closingDate
        ..description = description
        ..eMail = eMail
        ..game = game
        ..prize = prize
        ..title = title,
    ),
  );

  return firestoreData;
}
