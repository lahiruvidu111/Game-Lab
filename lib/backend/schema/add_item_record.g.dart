// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddItemRecord> _$addItemRecordSerializer =
    new _$AddItemRecordSerializer();

class _$AddItemRecordSerializer implements StructuredSerializer<AddItemRecord> {
  @override
  final Iterable<Type> types = const [AddItemRecord, _$AddItemRecord];
  @override
  final String wireName = 'AddItemRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddItemRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactDetails;
    if (value != null) {
      result
        ..add('contact_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
  AddItemRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddItemRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contact_details':
          result.contactDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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

class _$AddItemRecord extends AddItemRecord {
  @override
  final String? condition;
  @override
  final String? contactDetails;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AddItemRecord([void Function(AddItemRecordBuilder)? updates]) =>
      (new AddItemRecordBuilder()..update(updates))._build();

  _$AddItemRecord._(
      {this.condition,
      this.contactDetails,
      this.description,
      this.price,
      this.title,
      this.ffRef})
      : super._();

  @override
  AddItemRecord rebuild(void Function(AddItemRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemRecordBuilder toBuilder() => new AddItemRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItemRecord &&
        condition == other.condition &&
        contactDetails == other.contactDetails &&
        description == other.description &&
        price == other.price &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, condition.hashCode), contactDetails.hashCode),
                    description.hashCode),
                price.hashCode),
            title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddItemRecord')
          ..add('condition', condition)
          ..add('contactDetails', contactDetails)
          ..add('description', description)
          ..add('price', price)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AddItemRecordBuilder
    implements Builder<AddItemRecord, AddItemRecordBuilder> {
  _$AddItemRecord? _$v;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(String? condition) => _$this._condition = condition;

  String? _contactDetails;
  String? get contactDetails => _$this._contactDetails;
  set contactDetails(String? contactDetails) =>
      _$this._contactDetails = contactDetails;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AddItemRecordBuilder() {
    AddItemRecord._initializeBuilder(this);
  }

  AddItemRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _condition = $v.condition;
      _contactDetails = $v.contactDetails;
      _description = $v.description;
      _price = $v.price;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItemRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddItemRecord;
  }

  @override
  void update(void Function(AddItemRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddItemRecord build() => _build();

  _$AddItemRecord _build() {
    final _$result = _$v ??
        new _$AddItemRecord._(
            condition: condition,
            contactDetails: contactDetails,
            description: description,
            price: price,
            title: title,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
