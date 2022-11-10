import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'download_games_record.g.dart';

abstract class DownloadGamesRecord
    implements Built<DownloadGamesRecord, DownloadGamesRecordBuilder> {
  static Serializer<DownloadGamesRecord> get serializer =>
      _$downloadGamesRecordSerializer;

  String? get details;

  @BuiltValueField(wireName: 'e-mail')
  String? get eMail;

  @BuiltValueField(wireName: 'game_name')
  String? get gameName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DownloadGamesRecordBuilder builder) => builder
    ..details = ''
    ..eMail = ''
    ..gameName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('downloadGames');

  static Stream<DownloadGamesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DownloadGamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DownloadGamesRecord._();
  factory DownloadGamesRecord(
          [void Function(DownloadGamesRecordBuilder) updates]) =
      _$DownloadGamesRecord;

  static DownloadGamesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDownloadGamesRecordData({
  String? details,
  String? eMail,
  String? gameName,
}) {
  final firestoreData = serializers.toFirestore(
    DownloadGamesRecord.serializer,
    DownloadGamesRecord(
      (d) => d
        ..details = details
        ..eMail = eMail
        ..gameName = gameName,
    ),
  );

  return firestoreData;
}
