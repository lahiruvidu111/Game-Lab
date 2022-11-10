import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'request_item_record.g.dart';

abstract class RequestItemRecord
    implements Built<RequestItemRecord, RequestItemRecordBuilder> {
  static Serializer<RequestItemRecord> get serializer =>
      _$requestItemRecordSerializer;

  String? get description;

  @BuiltValueField(wireName: 'item_name')
  String? get itemName;

  String? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RequestItemRecordBuilder builder) => builder
    ..description = ''
    ..itemName = ''
    ..price = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requestItem');

  static Stream<RequestItemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RequestItemRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RequestItemRecord._();
  factory RequestItemRecord([void Function(RequestItemRecordBuilder) updates]) =
      _$RequestItemRecord;

  static RequestItemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRequestItemRecordData({
  String? description,
  String? itemName,
  String? price,
}) {
  final firestoreData = serializers.toFirestore(
    RequestItemRecord.serializer,
    RequestItemRecord(
      (r) => r
        ..description = description
        ..itemName = itemName
        ..price = price,
    ),
  );

  return firestoreData;
}
