import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tournament_registration_record.g.dart';

abstract class TournamentRegistrationRecord
    implements
        Built<TournamentRegistrationRecord,
            TournamentRegistrationRecordBuilder> {
  static Serializer<TournamentRegistrationRecord> get serializer =>
      _$tournamentRegistrationRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'e-mail')
  String? get eMail;

  @BuiltValueField(wireName: 'in-game_id')
  String? get inGameId;

  @BuiltValueField(wireName: 'contact_no')
  int? get contactNo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TournamentRegistrationRecordBuilder builder) =>
      builder
        ..name = ''
        ..eMail = ''
        ..inGameId = ''
        ..contactNo = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tournamentRegistration');

  static Stream<TournamentRegistrationRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TournamentRegistrationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TournamentRegistrationRecord._();
  factory TournamentRegistrationRecord(
          [void Function(TournamentRegistrationRecordBuilder) updates]) =
      _$TournamentRegistrationRecord;

  static TournamentRegistrationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTournamentRegistrationRecordData({
  String? name,
  String? eMail,
  String? inGameId,
  int? contactNo,
}) {
  final firestoreData = serializers.toFirestore(
    TournamentRegistrationRecord.serializer,
    TournamentRegistrationRecord(
      (t) => t
        ..name = name
        ..eMail = eMail
        ..inGameId = inGameId
        ..contactNo = contactNo,
    ),
  );

  return firestoreData;
}
