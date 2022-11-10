import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'add_item_record.g.dart';

abstract class AddItemRecord
    implements Built<AddItemRecord, AddItemRecordBuilder> {
  static Serializer<AddItemRecord> get serializer => _$addItemRecordSerializer;

  String? get condition;

  @BuiltValueField(wireName: 'contact_details')
  String? get contactDetails;

  String? get description;

  String? get price;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AddItemRecordBuilder builder) => builder
    ..condition = ''
    ..contactDetails = ''
    ..description = ''
    ..price = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addItem');

  static Stream<AddItemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AddItemRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AddItemRecord._();
  factory AddItemRecord([void Function(AddItemRecordBuilder) updates]) =
      _$AddItemRecord;

  static AddItemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAddItemRecordData({
  String? condition,
  String? contactDetails,
  String? description,
  String? price,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    AddItemRecord.serializer,
    AddItemRecord(
      (a) => a
        ..condition = condition
        ..contactDetails = contactDetails
        ..description = description
        ..price = price
        ..title = title,
    ),
  );

  return firestoreData;
}
