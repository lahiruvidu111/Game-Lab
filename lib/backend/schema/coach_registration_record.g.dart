// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_registration_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoachRegistrationRecord> _$coachRegistrationRecordSerializer =
    new _$CoachRegistrationRecordSerializer();

class _$CoachRegistrationRecordSerializer
    implements StructuredSerializer<CoachRegistrationRecord> {
  @override
  final Iterable<Type> types = const [
    CoachRegistrationRecord,
    _$CoachRegistrationRecord
  ];
  @override
  final String wireName = 'CoachRegistrationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CoachRegistrationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.coachName;
    if (value != null) {
      result
        ..add('coach_name')
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
    value = object.gameName;
    if (value != null) {
      result
        ..add('game_name')
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
  CoachRegistrationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoachRegistrationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coach_name':
          result.coachName = serializers.deserialize(value,
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
        case 'game_name':
          result.gameName = serializers.deserialize(value,
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

class _$CoachRegistrationRecord extends CoachRegistrationRecord {
  @override
  final String? coachName;
  @override
  final String? contactDetails;
  @override
  final String? description;
  @override
  final String? gameName;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CoachRegistrationRecord(
          [void Function(CoachRegistrationRecordBuilder)? updates]) =>
      (new CoachRegistrationRecordBuilder()..update(updates))._build();

  _$CoachRegistrationRecord._(
      {this.coachName,
      this.contactDetails,
      this.description,
      this.gameName,
      this.title,
      this.ffRef})
      : super._();

  @override
  CoachRegistrationRecord rebuild(
          void Function(CoachRegistrationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoachRegistrationRecordBuilder toBuilder() =>
      new CoachRegistrationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoachRegistrationRecord &&
        coachName == other.coachName &&
        contactDetails == other.contactDetails &&
        description == other.description &&
        gameName == other.gameName &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, coachName.hashCode), contactDetails.hashCode),
                    description.hashCode),
                gameName.hashCode),
            title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoachRegistrationRecord')
          ..add('coachName', coachName)
          ..add('contactDetails', contactDetails)
          ..add('description', description)
          ..add('gameName', gameName)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CoachRegistrationRecordBuilder
    implements
        Builder<CoachRegistrationRecord, CoachRegistrationRecordBuilder> {
  _$CoachRegistrationRecord? _$v;

  String? _coachName;
  String? get coachName => _$this._coachName;
  set coachName(String? coachName) => _$this._coachName = coachName;

  String? _contactDetails;
  String? get contactDetails => _$this._contactDetails;
  set contactDetails(String? contactDetails) =>
      _$this._contactDetails = contactDetails;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _gameName;
  String? get gameName => _$this._gameName;
  set gameName(String? gameName) => _$this._gameName = gameName;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CoachRegistrationRecordBuilder() {
    CoachRegistrationRecord._initializeBuilder(this);
  }

  CoachRegistrationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coachName = $v.coachName;
      _contactDetails = $v.contactDetails;
      _description = $v.description;
      _gameName = $v.gameName;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoachRegistrationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoachRegistrationRecord;
  }

  @override
  void update(void Function(CoachRegistrationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoachRegistrationRecord build() => _build();

  _$CoachRegistrationRecord _build() {
    final _$result = _$v ??
        new _$CoachRegistrationRecord._(
            coachName: coachName,
            contactDetails: contactDetails,
            description: description,
            gameName: gameName,
            title: title,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
