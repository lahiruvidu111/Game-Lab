// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_item_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestItemRecord> _$requestItemRecordSerializer =
    new _$RequestItemRecordSerializer();

class _$RequestItemRecordSerializer
    implements StructuredSerializer<RequestItemRecord> {
  @override
  final Iterable<Type> types = const [RequestItemRecord, _$RequestItemRecord];
  @override
  final String wireName = 'RequestItemRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RequestItemRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('item_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RequestItemRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestItemRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'item_name':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RequestItemRecord extends RequestItemRecord {
  @override
  final String? description;
  @override
  final String? itemName;
  @override
  final String? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RequestItemRecord(
          [void Function(RequestItemRecordBuilder)? updates]) =>
      (new RequestItemRecordBuilder()..update(updates))._build();

  _$RequestItemRecord._(
      {this.description, this.itemName, this.price, this.ffRef})
      : super._();

  @override
  RequestItemRecord rebuild(void Function(RequestItemRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestItemRecordBuilder toBuilder() =>
      new RequestItemRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestItemRecord &&
        description == other.description &&
        itemName == other.itemName &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), itemName.hashCode),
            price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestItemRecord')
          ..add('description', description)
          ..add('itemName', itemName)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RequestItemRecordBuilder
    implements Builder<RequestItemRecord, RequestItemRecordBuilder> {
  _$RequestItemRecord? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RequestItemRecordBuilder() {
    RequestItemRecord._initializeBuilder(this);
  }

  RequestItemRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _itemName = $v.itemName;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestItemRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestItemRecord;
  }

  @override
  void update(void Function(RequestItemRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestItemRecord build() => _build();

  _$RequestItemRecord _build() {
    final _$result = _$v ??
        new _$RequestItemRecord._(
            description: description,
            itemName: itemName,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
